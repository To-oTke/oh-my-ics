int readcnt = 0; /* Initially 0 */
sem_t mutex, w, r; /* Both initially 1 */

void reader(void)
{
    while (1) {
        P(&r);
        P(&mutex);
        readcnt++;
        if (readcnt == 1) /* First in */
            P(&w);
        V(&mutex);
        V(&r);

        /* Reading happens here */

        P(&mutex);
        readcnt--;
        if (readcnt == 0) /* Last out */
            V(&w);
        V(&mutex);
    }
}

void writer(void)
{
    while (1) {
        P(&r);
        P(&w);

        /* Writing here */

        V(&w);
        V(&r);
    }
}