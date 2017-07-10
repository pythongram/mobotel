.class public Lco/ronash/pushe/receiver/a;
.super Ljava/lang/Object;


# direct methods
.method public static a()Ljava/lang/String;
    .registers 16

    const v15, 0x186a0

    const/4 v14, 0x2

    const/4 v13, 0x1

    const/4 v4, 0x0

    new-instance v0, Ljava/io/File;

    const-string v1, "/proc"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v7

    const v3, 0x7fffffff

    const/4 v1, 0x0

    array-length v8, v7

    move v6, v4

    :goto_17
    if-ge v6, v8, :cond_104

    aget-object v0, v7, v6

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_25

    :cond_21
    :goto_21
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_17

    :cond_25
    :try_start_25
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_2c} :catch_10e

    move-result v9

    :try_start_2d
    const-string v0, "/proc/%d/cgroup"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v2, v5

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lco/ronash/pushe/receiver/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    if-ne v2, v14, :cond_21

    const/4 v2, 0x0

    aget-object v2, v0, v2

    const/4 v5, 0x1

    aget-object v5, v0, v5

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    const-string v0, "bg_non_interactive"

    invoke-virtual {v2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_21

    const-string v0, "/proc/%d/cmdline"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v2, v10

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lco/ronash/pushe/receiver/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.android.systemui"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_21

    const-string v2, ":"

    invoke-virtual {v5, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x2

    aget-object v2, v2, v5

    const-string v5, "/"

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x1

    aget-object v2, v2, v5

    const-string v5, "uid_"

    const-string v10, ""

    invoke-virtual {v2, v5, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/16 v5, 0x3e8

    if-lt v2, v5, :cond_a4

    const/16 v5, 0x40e

    if-le v2, v5, :cond_21

    :cond_a4
    add-int/lit16 v2, v2, -0x2710

    move v5, v2

    move v2, v4

    :goto_a8
    if-le v5, v15, :cond_ae

    sub-int/2addr v5, v15

    add-int/lit8 v2, v2, 0x1

    goto :goto_a8

    :cond_ae
    if-ltz v5, :cond_21

    new-instance v2, Ljava/io/File;

    const-string v5, "/proc/%d/oom_score_adj"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v5, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->canRead()Z

    move-result v5

    if-eqz v5, :cond_d9

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lco/ronash/pushe/receiver/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_21

    :cond_d9
    const-string v2, "/proc/%d/oom_score"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v5, v10

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lco/ronash/pushe/receiver/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_f0
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_f0} :catch_f8

    move-result v2

    if-ge v2, v3, :cond_111

    move v1, v2

    :goto_f4
    move v3, v1

    move-object v1, v0

    goto/16 :goto_21

    :catch_f8
    move-exception v0

    const-string v2, "Error in getting foreground app"

    new-array v5, v13, [Ljava/lang/Object;

    aput-object v0, v5, v4

    invoke-static {v2, v5}, Lco/ronash/pushe/log/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_21

    :cond_104
    if-eqz v1, :cond_10b

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :goto_10a
    return-object v0

    :cond_10b
    const-string v0, ""

    goto :goto_10a

    :catch_10e
    move-exception v0

    goto/16 :goto_21

    :cond_111
    move-object v0, v1

    move v1, v3

    goto :goto_f4
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/FileReader;

    invoke-direct {v0, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    :goto_1a
    if-eqz v0, :cond_2a

    const/16 v3, 0xa

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    goto :goto_1a

    :cond_2a
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
