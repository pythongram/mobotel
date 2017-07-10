.class public Lco/ronash/pushe/log/g;
.super Ljava/lang/Object;


# static fields
.field private static a:Lco/ronash/pushe/log/g;


# instance fields
.field private b:Ljava/util/Map;

.field private c:Z

.field private d:Lco/ronash/pushe/log/f;

.field private e:Z


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lco/ronash/pushe/log/g;->e:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lco/ronash/pushe/log/g;->b:Ljava/util/Map;

    sget-object v0, Lco/ronash/pushe/log/f;->d:Lco/ronash/pushe/log/f;

    iput-object v0, p0, Lco/ronash/pushe/log/g;->d:Lco/ronash/pushe/log/f;

    return-void
.end method

.method public static a()Lco/ronash/pushe/log/g;
    .registers 1

    sget-object v0, Lco/ronash/pushe/log/g;->a:Lco/ronash/pushe/log/g;

    if-nez v0, :cond_8

    const/4 v0, 0x0

    invoke-static {v0}, Lco/ronash/pushe/log/g;->a(Landroid/content/Context;)V

    :cond_8
    sget-object v0, Lco/ronash/pushe/log/g;->a:Lco/ronash/pushe/log/g;

    return-object v0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    new-array v0, v0, [B

    :try_start_3
    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/util/Base64;->decode([BI)[B
    :try_end_d
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_d} :catch_14

    move-result-object v0

    :goto_e
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    return-object v1

    :catch_14
    move-exception v1

    goto :goto_e
.end method

.method public static declared-synchronized a(Landroid/content/Context;)V
    .registers 4

    const-class v1, Lco/ronash/pushe/log/g;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lco/ronash/pushe/log/g;->a:Lco/ronash/pushe/log/g;

    if-nez v0, :cond_e

    new-instance v0, Lco/ronash/pushe/log/g;

    invoke-direct {v0}, Lco/ronash/pushe/log/g;-><init>()V

    sput-object v0, Lco/ronash/pushe/log/g;->a:Lco/ronash/pushe/log/g;

    :cond_e
    sget-object v0, Lco/ronash/pushe/log/g;->a:Lco/ronash/pushe/log/g;

    iget-boolean v0, v0, Lco/ronash/pushe/log/g;->e:Z

    if-nez v0, :cond_23

    if-eqz p0, :cond_23

    invoke-static {p0}, Lco/ronash/pushe/log/g;->b(Landroid/content/Context;)V

    sget-object v0, Lco/ronash/pushe/log/g;->a:Lco/ronash/pushe/log/g;

    invoke-direct {v0, p0}, Lco/ronash/pushe/log/g;->d(Landroid/content/Context;)V

    sget-object v0, Lco/ronash/pushe/log/g;->a:Lco/ronash/pushe/log/g;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lco/ronash/pushe/log/g;->e:Z
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_25

    :cond_23
    monitor-exit v1

    return-void

    :catchall_25
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Lco/ronash/pushe/log/c;)V
    .registers 2

    invoke-static {}, Lco/ronash/pushe/log/g;->a()Lco/ronash/pushe/log/g;

    move-result-object v0

    invoke-virtual {v0, p0}, Lco/ronash/pushe/log/g;->d(Lco/ronash/pushe/log/c;)V

    return-void
.end method

.method private varargs a(Lco/ronash/pushe/log/f;Lco/ronash/pushe/log/d;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 9

    iget-boolean v0, p0, Lco/ronash/pushe/log/g;->c:Z

    if-eqz v0, :cond_12

    if-eqz p1, :cond_13

    invoke-virtual {p1}, Lco/ronash/pushe/log/f;->ordinal()I

    move-result v0

    iget-object v1, p0, Lco/ronash/pushe/log/g;->d:Lco/ronash/pushe/log/f;

    invoke-virtual {v1}, Lco/ronash/pushe/log/f;->ordinal()I

    move-result v1

    if-ge v0, v1, :cond_13

    :cond_12
    :goto_12
    return-void

    :cond_13
    new-instance v0, Lco/ronash/pushe/log/c;

    invoke-direct {v0}, Lco/ronash/pushe/log/c;-><init>()V

    invoke-virtual {v0, p1}, Lco/ronash/pushe/log/c;->a(Lco/ronash/pushe/log/f;)Lco/ronash/pushe/log/c;

    move-result-object v0

    invoke-virtual {v0, p3}, Lco/ronash/pushe/log/c;->b(Ljava/lang/String;)Lco/ronash/pushe/log/c;

    move-result-object v0

    invoke-virtual {v0, p4}, Lco/ronash/pushe/log/c;->a([Ljava/lang/Object;)Lco/ronash/pushe/log/c;

    move-result-object v0

    invoke-virtual {v0, p2}, Lco/ronash/pushe/log/c;->a(Lco/ronash/pushe/log/d;)Lco/ronash/pushe/log/c;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lco/ronash/pushe/log/c;->a(J)Lco/ronash/pushe/log/c;

    move-result-object v0

    sget-object v1, Lco/ronash/pushe/log/f;->d:Lco/ronash/pushe/log/f;

    if-eq p1, v1, :cond_3d

    sget-object v1, Lco/ronash/pushe/log/f;->c:Lco/ronash/pushe/log/f;

    if-ne p1, v1, :cond_40

    :cond_3d
    invoke-virtual {v0}, Lco/ronash/pushe/log/c;->i()Lco/ronash/pushe/log/c;

    :cond_40
    invoke-direct {p0, v0}, Lco/ronash/pushe/log/g;->g(Lco/ronash/pushe/log/c;)V

    goto :goto_12
.end method

.method public static a(Ljava/lang/String;Lco/ronash/pushe/log/d;)V
    .registers 3

    invoke-static {}, Lco/ronash/pushe/log/g;->a()Lco/ronash/pushe/log/g;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lco/ronash/pushe/log/g;->e(Ljava/lang/String;Lco/ronash/pushe/log/d;)V

    return-void
.end method

.method public static varargs a(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 3

    invoke-static {}, Lco/ronash/pushe/log/g;->a()Lco/ronash/pushe/log/g;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lco/ronash/pushe/log/g;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private static b(Landroid/content/Context;)V
    .registers 4

    const/4 v2, 0x0

    invoke-static {p0}, Lco/ronash/pushe/log/b;->a(Landroid/content/Context;)Lco/ronash/pushe/log/b;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lco/ronash/pushe/log/b;->a(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-static {p0}, Lco/ronash/pushe/d/c;->a(Landroid/content/Context;)Lco/ronash/pushe/d/c;

    move-result-object v0

    const-string v1, "user_sentry_report_dsn"

    invoke-virtual {v0, v1, v2}, Lco/ronash/pushe/d/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_34

    :cond_1e
    invoke-static {p0}, Lco/ronash/pushe/d/c;->a(Landroid/content/Context;)Lco/ronash/pushe/d/c;

    move-result-object v0

    const-string v1, "user_sentry_report_manifest_dsn"

    invoke-virtual {v0, v1, v2}, Lco/ronash/pushe/d/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_30

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_34

    :cond_30
    invoke-static {p0}, Lco/ronash/pushe/log/g;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :cond_34
    invoke-static {p0, v0}, Lcom/a/a/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p0}, Lco/ronash/pushe/log/b;->b(Landroid/content/Context;)V

    return-void
.end method

.method public static b(Lco/ronash/pushe/log/c;)V
    .registers 2

    invoke-static {}, Lco/ronash/pushe/log/g;->a()Lco/ronash/pushe/log/g;

    move-result-object v0

    invoke-virtual {v0, p0}, Lco/ronash/pushe/log/g;->e(Lco/ronash/pushe/log/c;)V

    return-void
.end method

.method public static b(Ljava/lang/String;Lco/ronash/pushe/log/d;)V
    .registers 3

    invoke-static {}, Lco/ronash/pushe/log/g;->a()Lco/ronash/pushe/log/g;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lco/ronash/pushe/log/g;->f(Ljava/lang/String;Lco/ronash/pushe/log/d;)V

    return-void
.end method

.method public static varargs b(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 3

    invoke-static {}, Lco/ronash/pushe/log/g;->a()Lco/ronash/pushe/log/g;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lco/ronash/pushe/log/g;->f(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private static c(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "co.ronash.pushe.cr"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_16} :catch_2f

    move-result-object v0

    :goto_17
    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_39

    :cond_1f
    const-string v0, "aHR0cDovLzg2ZjEyODM1ZmExNjQ0ZDliMjdiYzZiOTQ4N2YzZDYzOmY2YWNjM2U1MjUzZjRiNjg5NjlkZjVlNDgzNDE3NGZhQGNhLnB1c2hlLmNvLzUyNDg="

    invoke-static {v0}, Lco/ronash/pushe/log/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lco/ronash/pushe/d/c;->a(Landroid/content/Context;)Lco/ronash/pushe/d/c;

    move-result-object v1

    const-string v2, "user_sentry_report_manifest_dsn"

    invoke-virtual {v1, v2, v0}, Lco/ronash/pushe/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2e
    return-object v0

    :catch_2f
    move-exception v0

    const-string v2, "Pushe"

    const-string v3, "Initializing Crash-Reporter failed."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    goto :goto_17

    :cond_39
    invoke-static {v0}, Lco/ronash/pushe/log/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lco/ronash/pushe/d/c;->a(Landroid/content/Context;)Lco/ronash/pushe/d/c;

    move-result-object v1

    const-string v2, "user_sentry_report_manifest_dsn"

    invoke-virtual {v1, v2, v0}, Lco/ronash/pushe/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2e
.end method

.method public static c(Lco/ronash/pushe/log/c;)V
    .registers 2

    invoke-static {}, Lco/ronash/pushe/log/g;->a()Lco/ronash/pushe/log/g;

    move-result-object v0

    invoke-virtual {v0, p0}, Lco/ronash/pushe/log/g;->f(Lco/ronash/pushe/log/c;)V

    return-void
.end method

.method public static c(Ljava/lang/String;Lco/ronash/pushe/log/d;)V
    .registers 3

    invoke-static {}, Lco/ronash/pushe/log/g;->a()Lco/ronash/pushe/log/g;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lco/ronash/pushe/log/g;->g(Ljava/lang/String;Lco/ronash/pushe/log/d;)V

    return-void
.end method

.method public static varargs c(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 3

    invoke-static {}, Lco/ronash/pushe/log/g;->a()Lco/ronash/pushe/log/g;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lco/ronash/pushe/log/g;->g(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private declared-synchronized d(Landroid/content/Context;)V
    .registers 3

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    invoke-virtual {p0, v0}, Lco/ronash/pushe/log/g;->a(Z)V

    invoke-direct {p0, p1}, Lco/ronash/pushe/log/g;->e(Landroid/content/Context;)V
    :try_end_8
    .catchall {:try_start_2 .. :try_end_8} :catchall_a

    monitor-exit p0

    return-void

    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static d(Ljava/lang/String;Lco/ronash/pushe/log/d;)V
    .registers 3

    invoke-static {}, Lco/ronash/pushe/log/g;->a()Lco/ronash/pushe/log/g;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lco/ronash/pushe/log/g;->h(Ljava/lang/String;Lco/ronash/pushe/log/d;)V

    return-void
.end method

.method public static varargs d(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 3

    invoke-static {}, Lco/ronash/pushe/log/g;->a()Lco/ronash/pushe/log/g;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lco/ronash/pushe/log/g;->h(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private e(Landroid/content/Context;)V
    .registers 10

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :try_start_6
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "log_handlers"

    const-string v4, "raw"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    const-string v5, "UTF-8"

    invoke-direct {v4, v2, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    const/16 v2, 0x8

    invoke-direct {v3, v4, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    const-string v2, ""

    :goto_2e
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_46

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_3c
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_3c} :catch_3d
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_6 .. :try_end_3c} :catch_ba
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_3c} :catch_d1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_3c} :catch_c5
    .catch Ljava/lang/InstantiationException; {:try_start_6 .. :try_end_3c} :catch_cb
    .catch Ljava/lang/IllegalAccessException; {:try_start_6 .. :try_end_3c} :catch_ce
    .catch Ljava/lang/ClassCastException; {:try_start_6 .. :try_end_3c} :catch_c8
    .catch Ljava/lang/NoSuchMethodException; {:try_start_6 .. :try_end_3c} :catch_d4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_6 .. :try_end_3c} :catch_d7
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_3c} :catch_bc

    goto :goto_2e

    :catch_3d
    move-exception v0

    :goto_3e
    const-string v1, "Pushe"

    const-string v2, "Exception in readAndInitHandlers() "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_45
    :goto_45
    return-void

    :cond_46
    :try_start_46
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_45

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "logHandlers"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_45

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_45

    move v1, v0

    :goto_64
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v1, v0, :cond_45

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v3, "logHandlerClass"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "logLevel"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/content/Context;

    aput-object v7, v5, v6

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v5, v0, Lco/ronash/pushe/log/e;

    if-eqz v5, :cond_a1

    check-cast v0, Lco/ronash/pushe/log/e;

    invoke-virtual {p0, v0, v4}, Lco/ronash/pushe/log/g;->a(Lco/ronash/pushe/log/e;Ljava/lang/String;)V

    :goto_9d
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_64

    :cond_a1
    const-string v0, "Pushe"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", used in log_handlers.json as a handler, is not a subClass of LogHandler"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b9
    .catch Ljava/io/FileNotFoundException; {:try_start_46 .. :try_end_b9} :catch_3d
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_46 .. :try_end_b9} :catch_ba
    .catch Lorg/json/JSONException; {:try_start_46 .. :try_end_b9} :catch_d1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_46 .. :try_end_b9} :catch_c5
    .catch Ljava/lang/InstantiationException; {:try_start_46 .. :try_end_b9} :catch_cb
    .catch Ljava/lang/IllegalAccessException; {:try_start_46 .. :try_end_b9} :catch_ce
    .catch Ljava/lang/ClassCastException; {:try_start_46 .. :try_end_b9} :catch_c8
    .catch Ljava/lang/NoSuchMethodException; {:try_start_46 .. :try_end_b9} :catch_d4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_46 .. :try_end_b9} :catch_d7
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_b9} :catch_bc

    goto :goto_9d

    :catch_ba
    move-exception v0

    goto :goto_3e

    :catch_bc
    move-exception v0

    const-string v1, "Pushe"

    const-string v2, "IOException in readAndInitHandlers() "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_45

    :catch_c5
    move-exception v0

    goto/16 :goto_3e

    :catch_c8
    move-exception v0

    goto/16 :goto_3e

    :catch_cb
    move-exception v0

    goto/16 :goto_3e

    :catch_ce
    move-exception v0

    goto/16 :goto_3e

    :catch_d1
    move-exception v0

    goto/16 :goto_3e

    :catch_d4
    move-exception v0

    goto/16 :goto_3e

    :catch_d7
    move-exception v0

    goto/16 :goto_3e
.end method

.method private declared-synchronized g(Lco/ronash/pushe/log/c;)V
    .registers 6

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lco/ronash/pushe/log/g;->c:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_39

    if-nez v0, :cond_7

    :cond_5
    monitor-exit p0

    return-void

    :cond_7
    :try_start_7
    iget-object v0, p0, Lco/ronash/pushe/log/g;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_11
    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lco/ronash/pushe/log/e;

    iget-object v1, p0, Lco/ronash/pushe/log/g;->b:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lco/ronash/pushe/log/f;

    if-eqz v1, :cond_11

    invoke-virtual {v1}, Lco/ronash/pushe/log/f;->ordinal()I

    move-result v1

    invoke-virtual {p1}, Lco/ronash/pushe/log/c;->a()Lco/ronash/pushe/log/f;

    move-result-object v3

    invoke-virtual {v3}, Lco/ronash/pushe/log/f;->ordinal()I

    move-result v3

    if-gt v1, v3, :cond_11

    invoke-interface {v0, p1}, Lco/ronash/pushe/log/e;->onLog(Lco/ronash/pushe/log/c;)V
    :try_end_38
    .catchall {:try_start_7 .. :try_end_38} :catchall_39

    goto :goto_11

    :catchall_39
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized a(Lco/ronash/pushe/log/e;Lco/ronash/pushe/log/f;)V
    .registers 5

    monitor-enter p0

    if-nez p2, :cond_5

    :try_start_3
    sget-object p2, Lco/ronash/pushe/log/f;->d:Lco/ronash/pushe/log/f;

    :cond_5
    invoke-virtual {p2}, Lco/ronash/pushe/log/f;->ordinal()I

    move-result v0

    iget-object v1, p0, Lco/ronash/pushe/log/g;->d:Lco/ronash/pushe/log/f;

    invoke-virtual {v1}, Lco/ronash/pushe/log/f;->ordinal()I

    move-result v1

    if-ge v0, v1, :cond_13

    iput-object p2, p0, Lco/ronash/pushe/log/g;->d:Lco/ronash/pushe/log/f;

    :cond_13
    iget-object v0, p0, Lco/ronash/pushe/log/g;->b:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_1a

    monitor-exit p0

    return-void

    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lco/ronash/pushe/log/e;Ljava/lang/String;)V
    .registers 6

    monitor-enter p0

    :try_start_1
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const/4 v0, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_60

    :cond_11
    :goto_11
    packed-switch v0, :pswitch_data_76

    sget-object v0, Lco/ronash/pushe/log/f;->a:Lco/ronash/pushe/log/f;

    :goto_16
    invoke-virtual {p0, p1, v0}, Lco/ronash/pushe/log/g;->a(Lco/ronash/pushe/log/e;Lco/ronash/pushe/log/f;)V
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_5c

    monitor-exit p0

    return-void

    :sswitch_1b
    :try_start_1b
    const-string v2, "debug"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    const/4 v0, 0x0

    goto :goto_11

    :sswitch_25
    const-string v2, "error"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    const/4 v0, 0x1

    goto :goto_11

    :sswitch_2f
    const-string v2, "fatal"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    const/4 v0, 0x2

    goto :goto_11

    :sswitch_39
    const-string v2, "info"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    const/4 v0, 0x3

    goto :goto_11

    :sswitch_43
    const-string v2, "warning"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    const/4 v0, 0x4

    goto :goto_11

    :pswitch_4d
    sget-object v0, Lco/ronash/pushe/log/f;->a:Lco/ronash/pushe/log/f;

    goto :goto_16

    :pswitch_50
    sget-object v0, Lco/ronash/pushe/log/f;->d:Lco/ronash/pushe/log/f;

    goto :goto_16

    :pswitch_53
    sget-object v0, Lco/ronash/pushe/log/f;->e:Lco/ronash/pushe/log/f;

    goto :goto_16

    :pswitch_56
    sget-object v0, Lco/ronash/pushe/log/f;->b:Lco/ronash/pushe/log/f;

    goto :goto_16

    :pswitch_59
    sget-object v0, Lco/ronash/pushe/log/f;->c:Lco/ronash/pushe/log/f;
    :try_end_5b
    .catchall {:try_start_1b .. :try_end_5b} :catchall_5c

    goto :goto_16

    :catchall_5c
    move-exception v0

    monitor-exit p0

    throw v0

    nop

    :sswitch_data_60
    .sparse-switch
        0x3164ae -> :sswitch_39
        0x5b09653 -> :sswitch_1b
        0x5c4d208 -> :sswitch_25
        0x5cb3504 -> :sswitch_2f
        0x4305af9c -> :sswitch_43
    .end sparse-switch

    :pswitch_data_76
    .packed-switch 0x0
        :pswitch_4d
        :pswitch_50
        :pswitch_53
        :pswitch_56
        :pswitch_59
    .end packed-switch
.end method

.method public a(Z)V
    .registers 2

    iput-boolean p1, p0, Lco/ronash/pushe/log/g;->c:Z

    return-void
.end method

.method public b()Ljava/util/Set;
    .registers 2

    iget-object v0, p0, Lco/ronash/pushe/log/g;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public d(Lco/ronash/pushe/log/c;)V
    .registers 3

    sget-object v0, Lco/ronash/pushe/log/f;->c:Lco/ronash/pushe/log/f;

    invoke-virtual {p1, v0}, Lco/ronash/pushe/log/c;->a(Lco/ronash/pushe/log/f;)Lco/ronash/pushe/log/c;

    move-result-object v0

    invoke-direct {p0, v0}, Lco/ronash/pushe/log/g;->g(Lco/ronash/pushe/log/c;)V

    return-void
.end method

.method public e(Lco/ronash/pushe/log/c;)V
    .registers 3

    sget-object v0, Lco/ronash/pushe/log/f;->d:Lco/ronash/pushe/log/f;

    invoke-virtual {p1, v0}, Lco/ronash/pushe/log/c;->a(Lco/ronash/pushe/log/f;)Lco/ronash/pushe/log/c;

    move-result-object v0

    invoke-direct {p0, v0}, Lco/ronash/pushe/log/g;->g(Lco/ronash/pushe/log/c;)V

    return-void
.end method

.method public e(Ljava/lang/String;Lco/ronash/pushe/log/d;)V
    .registers 5

    sget-object v0, Lco/ronash/pushe/log/f;->a:Lco/ronash/pushe/log/f;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, p2, p1, v1}, Lco/ronash/pushe/log/g;->a(Lco/ronash/pushe/log/f;Lco/ronash/pushe/log/d;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs e(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5

    sget-object v0, Lco/ronash/pushe/log/f;->a:Lco/ronash/pushe/log/f;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1, p2}, Lco/ronash/pushe/log/g;->a(Lco/ronash/pushe/log/f;Lco/ronash/pushe/log/d;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public f(Lco/ronash/pushe/log/c;)V
    .registers 3

    sget-object v0, Lco/ronash/pushe/log/f;->e:Lco/ronash/pushe/log/f;

    invoke-virtual {p1, v0}, Lco/ronash/pushe/log/c;->a(Lco/ronash/pushe/log/f;)Lco/ronash/pushe/log/c;

    move-result-object v0

    invoke-direct {p0, v0}, Lco/ronash/pushe/log/g;->g(Lco/ronash/pushe/log/c;)V

    return-void
.end method

.method public f(Ljava/lang/String;Lco/ronash/pushe/log/d;)V
    .registers 5

    sget-object v0, Lco/ronash/pushe/log/f;->b:Lco/ronash/pushe/log/f;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, p2, p1, v1}, Lco/ronash/pushe/log/g;->a(Lco/ronash/pushe/log/f;Lco/ronash/pushe/log/d;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs f(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5

    sget-object v0, Lco/ronash/pushe/log/f;->b:Lco/ronash/pushe/log/f;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1, p2}, Lco/ronash/pushe/log/g;->a(Lco/ronash/pushe/log/f;Lco/ronash/pushe/log/d;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public g(Ljava/lang/String;Lco/ronash/pushe/log/d;)V
    .registers 5

    sget-object v0, Lco/ronash/pushe/log/f;->c:Lco/ronash/pushe/log/f;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, p2, p1, v1}, Lco/ronash/pushe/log/g;->a(Lco/ronash/pushe/log/f;Lco/ronash/pushe/log/d;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs g(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5

    sget-object v0, Lco/ronash/pushe/log/f;->c:Lco/ronash/pushe/log/f;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1, p2}, Lco/ronash/pushe/log/g;->a(Lco/ronash/pushe/log/f;Lco/ronash/pushe/log/d;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public h(Ljava/lang/String;Lco/ronash/pushe/log/d;)V
    .registers 5

    sget-object v0, Lco/ronash/pushe/log/f;->d:Lco/ronash/pushe/log/f;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, p2, p1, v1}, Lco/ronash/pushe/log/g;->a(Lco/ronash/pushe/log/f;Lco/ronash/pushe/log/d;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs h(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5

    sget-object v0, Lco/ronash/pushe/log/f;->d:Lco/ronash/pushe/log/f;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1, p2}, Lco/ronash/pushe/log/g;->a(Lco/ronash/pushe/log/f;Lco/ronash/pushe/log/d;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
