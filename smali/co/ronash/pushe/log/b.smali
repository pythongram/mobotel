.class public Lco/ronash/pushe/log/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field private static volatile a:Lco/ronash/pushe/log/b;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lco/ronash/pushe/log/b;->b:Landroid/content/Context;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lco/ronash/pushe/log/b;
    .registers 4

    sget-object v0, Lco/ronash/pushe/log/b;->a:Lco/ronash/pushe/log/b;

    if-nez v0, :cond_17

    const-class v1, Lco/ronash/pushe/log/b;

    monitor-enter v1

    :try_start_7
    sget-object v0, Lco/ronash/pushe/log/b;->a:Lco/ronash/pushe/log/b;

    if-nez v0, :cond_16

    new-instance v0, Lco/ronash/pushe/log/b;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lco/ronash/pushe/log/b;-><init>(Landroid/content/Context;)V

    sput-object v0, Lco/ronash/pushe/log/b;->a:Lco/ronash/pushe/log/b;

    :cond_16
    monitor-exit v1
    :try_end_17
    .catchall {:try_start_7 .. :try_end_17} :catchall_1a

    :cond_17
    sget-object v0, Lco/ronash/pushe/log/b;->a:Lco/ronash/pushe/log/b;

    return-object v0

    :catchall_1a
    move-exception v0

    :try_start_1b
    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw v0
.end method

.method private a(I)Z
    .registers 8

    const/4 v1, 0x1

    const/16 v3, 0x64

    const/4 v2, 0x0

    if-lez p1, :cond_20

    if-eq p1, v3, :cond_20

    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v0, v4, v5}, Ljava/util/Random;-><init>(J)V

    invoke-virtual {v0, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    if-gt v0, p1, :cond_1e

    move v0, v1

    :goto_18
    if-nez v0, :cond_1c

    if-ne p1, v3, :cond_1d

    :cond_1c
    move v2, v1

    :cond_1d
    return v2

    :cond_1e
    move v0, v2

    goto :goto_18

    :cond_20
    move v0, v2

    goto :goto_18
.end method

.method private b(Ljava/lang/Throwable;)Lco/ronash/pushe/log/c;
    .registers 10

    const/4 v5, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-direct {p0, v0}, Lco/ronash/pushe/log/b;->b([Ljava/lang/StackTraceElement;)Ljava/lang/StackTraceElement;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    array-length v1, v1

    if-lez v1, :cond_43

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": %s.%s"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_43
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7f

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    :cond_4d
    :goto_4d
    new-instance v2, Lco/ronash/pushe/log/c;

    invoke-direct {v2}, Lco/ronash/pushe/log/c;-><init>()V

    invoke-virtual {v2, v0}, Lco/ronash/pushe/log/c;->a(Ljava/lang/String;)Lco/ronash/pushe/log/c;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -- Pushe ExceptionCatcher -- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lco/ronash/pushe/log/c;->b(Ljava/lang/String;)Lco/ronash/pushe/log/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lco/ronash/pushe/log/c;->a(Ljava/lang/Throwable;)Lco/ronash/pushe/log/c;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lco/ronash/pushe/log/c;->a(J)Lco/ronash/pushe/log/c;

    move-result-object v0

    return-object v0

    :cond_7f
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v2, :cond_4d

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ": %s.%s"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_4d
.end method

.method private b([Ljava/lang/StackTraceElement;)Ljava/lang/StackTraceElement;
    .registers 6

    const/4 v1, 0x0

    move v0, v1

    :goto_2
    array-length v2, p1

    if-ge v0, v2, :cond_39

    aget-object v2, p1, v0

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android."

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_36

    const-string v3, "java."

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_36

    const-string v3, "dalvik."

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_36

    const-string v3, "com.android."

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_36

    const-string v3, "co.ronash.pushe.log."

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_36

    aget-object v0, p1, v0

    :goto_35
    return-object v0

    :cond_36
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_39
    array-length v0, p1

    if-lez v0, :cond_3f

    aget-object v0, p1, v1

    goto :goto_35

    :cond_3f
    const/4 v0, 0x0

    goto :goto_35
.end method

.method public static b(Landroid/content/Context;)V
    .registers 2

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    instance-of v0, v0, Lco/ronash/pushe/log/b;

    if-nez v0, :cond_f

    invoke-static {p0}, Lco/ronash/pushe/log/b;->a(Landroid/content/Context;)Lco/ronash/pushe/log/b;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    :cond_f
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .registers 3

    instance-of v0, p1, Lco/ronash/pushe/log/b;

    if-nez v0, :cond_8

    sget-object v0, Lco/ronash/pushe/log/b;->a:Lco/ronash/pushe/log/b;

    iput-object p1, v0, Lco/ronash/pushe/log/b;->c:Ljava/lang/Thread$UncaughtExceptionHandler;

    :cond_8
    return-void
.end method

.method public a(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 7

    const/4 v3, 0x0

    iget-object v0, p0, Lco/ronash/pushe/log/b;->b:Landroid/content/Context;

    invoke-static {v0}, Lco/ronash/pushe/d/c;->a(Landroid/content/Context;)Lco/ronash/pushe/d/c;

    move-result-object v0

    const-string v1, "user_sentry_report_percent"

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Lco/ronash/pushe/d/c;->a(Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0, v0}, Lco/ronash/pushe/log/b;->a(I)Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-virtual {p2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-virtual {p0, v0}, Lco/ronash/pushe/log/b;->a([Ljava/lang/StackTraceElement;)Z

    move-result v0

    if-eqz v0, :cond_2b

    const/4 v0, 0x1

    invoke-virtual {p0, p2, v0}, Lco/ronash/pushe/log/b;->a(Ljava/lang/Throwable;Z)V

    const-string v0, "exception is related to pushe, sending it with pushe tag"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lco/ronash/pushe/log/g;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2a
    :goto_2a
    return-void

    :cond_2b
    invoke-virtual {p0, p2, v3}, Lco/ronash/pushe/log/b;->a(Ljava/lang/Throwable;Z)V

    const-string v0, "exception is NOT related to pushe."

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lco/ronash/pushe/log/g;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lco/ronash/pushe/log/b;->c:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_2a
.end method

.method public a(Ljava/lang/Throwable;)V
    .registers 3

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lco/ronash/pushe/log/b;->a(Ljava/lang/Throwable;Z)V

    return-void
.end method

.method public a(Ljava/lang/Throwable;Z)V
    .registers 6

    const-string v0, "Pushe"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception caught "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lco/ronash/pushe/log/g;->a()Lco/ronash/pushe/log/g;

    move-result-object v2

    invoke-virtual {v2}, Lco/ronash/pushe/log/g;->b()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Pushe"

    const-string v1, "Exception caught "

    invoke-static {v0, v1, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, p0, Lco/ronash/pushe/log/b;->b:Landroid/content/Context;

    invoke-static {v0}, Lco/ronash/pushe/log/g;->a(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lco/ronash/pushe/log/b;->b(Ljava/lang/Throwable;)Lco/ronash/pushe/log/c;

    move-result-object v0

    invoke-virtual {v0, p2}, Lco/ronash/pushe/log/c;->a(Z)V

    invoke-static {v0}, Lco/ronash/pushe/log/g;->c(Lco/ronash/pushe/log/c;)V

    return-void
.end method

.method public a([Ljava/lang/StackTraceElement;)Z
    .registers 6

    const/4 v1, 0x0

    move v0, v1

    :goto_2
    array-length v2, p1

    if-ge v0, v2, :cond_1c

    aget-object v2, p1, v0

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "co.ronash.pushe."

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1b

    const-string v3, "com.evernote.android.job."

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1d

    :cond_1b
    const/4 v1, 0x1

    :cond_1c
    return v1

    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lco/ronash/pushe/log/b;->a(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void
.end method
