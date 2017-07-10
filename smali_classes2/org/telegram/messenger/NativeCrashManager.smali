.class public Lorg/telegram/messenger/NativeCrashManager;
.super Ljava/lang/Object;
.source "NativeCrashManager.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createLogFile()Ljava/lang/String;
    .registers 7

    .prologue
    .line 35
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 38
    .local v2, "now":Ljava/util/Date;
    :try_start_5
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    .line 39
    .local v1, "filename":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lnet/hockeyapp/android/Constants;->FILES_PATH:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".faketrace"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 40
    .local v3, "path":Ljava/lang/String;
    new-instance v4, Ljava/io/BufferedWriter;

    new-instance v5, Ljava/io/FileWriter;

    invoke-direct {v5, v3}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 41
    .local v4, "write":Ljava/io/BufferedWriter;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Package: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lnet/hockeyapp/android/Constants;->APP_PACKAGE:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 42
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Version Code: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lnet/hockeyapp/android/Constants;->APP_VERSION:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 43
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Version Name: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lnet/hockeyapp/android/Constants;->APP_VERSION_NAME:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 44
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Android: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lnet/hockeyapp/android/Constants;->ANDROID_VERSION:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 45
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Manufacturer: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lnet/hockeyapp/android/Constants;->PHONE_MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 46
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Model: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lnet/hockeyapp/android/Constants;->PHONE_MODEL:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 47
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Date: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 48
    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 49
    const-string v5, "MinidumpContainer"

    invoke-virtual {v4, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 50
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->flush()V

    .line 51
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V

    .line 52
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".faketrace"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_128
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_128} :catch_12a

    move-result-object v5

    .line 57
    .end local v1    # "filename":Ljava/lang/String;
    .end local v3    # "path":Ljava/lang/String;
    .end local v4    # "write":Ljava/io/BufferedWriter;
    :goto_129
    return-object v5

    .line 53
    :catch_12a
    move-exception v0

    .line 54
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 57
    const/4 v5, 0x0

    goto :goto_129
.end method

.method public static handleDumpFiles(Landroid/app/Activity;)V
    .registers 7
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 25
    invoke-static {}, Lorg/telegram/messenger/NativeCrashManager;->searchForDumpFiles()[Ljava/lang/String;

    move-result-object v1

    .line 26
    .local v1, "filenames":[Ljava/lang/String;
    array-length v5, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_7
    if-ge v4, v5, :cond_21

    aget-object v0, v1, v4

    .line 27
    .local v0, "dumpFilename":Ljava/lang/String;
    invoke-static {}, Lorg/telegram/messenger/NativeCrashManager;->createLogFile()Ljava/lang/String;

    move-result-object v2

    .line 28
    .local v2, "logFilename":Ljava/lang/String;
    if-eqz v2, :cond_1a

    .line 29
    sget-boolean v3, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz v3, :cond_1e

    sget-object v3, Lorg/telegram/messenger/BuildVars;->HOCKEY_APP_HASH_DEBUG:Ljava/lang/String;

    :goto_17
    invoke-static {p0, v3, v0, v2}, Lorg/telegram/messenger/NativeCrashManager;->uploadDumpAndLog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    :cond_1a
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_7

    .line 29
    :cond_1e
    sget-object v3, Lorg/telegram/messenger/BuildVars;->HOCKEY_APP_HASH:Ljava/lang/String;

    goto :goto_17

    .line 32
    .end local v0    # "dumpFilename":Ljava/lang/String;
    .end local v2    # "logFilename":Ljava/lang/String;
    :cond_21
    return-void
.end method

.method private static searchForDumpFiles()[Ljava/lang/String;
    .registers 6

    .prologue
    const/4 v5, 0x0

    .line 103
    sget-object v3, Lnet/hockeyapp/android/Constants;->FILES_PATH:Ljava/lang/String;

    if-eqz v3, :cond_38

    .line 104
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lnet/hockeyapp/android/Constants;->FILES_PATH:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 105
    .local v1, "dir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    move-result v0

    .line 106
    .local v0, "created":Z
    if-nez v0, :cond_2e

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2e

    .line 107
    new-array v3, v5, [Ljava/lang/String;

    .line 116
    .end local v0    # "created":Z
    .end local v1    # "dir":Ljava/io/File;
    :goto_2d
    return-object v3

    .line 109
    .restart local v0    # "created":Z
    .restart local v1    # "dir":Ljava/io/File;
    :cond_2e
    new-instance v2, Lorg/telegram/messenger/NativeCrashManager$2;

    invoke-direct {v2}, Lorg/telegram/messenger/NativeCrashManager$2;-><init>()V

    .line 114
    .local v2, "filter":Ljava/io/FilenameFilter;
    invoke-virtual {v1, v2}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v3

    goto :goto_2d

    .line 116
    .end local v0    # "created":Z
    .end local v1    # "dir":Ljava/io/File;
    .end local v2    # "filter":Ljava/io/FilenameFilter;
    :cond_38
    new-array v3, v5, [Ljava/lang/String;

    goto :goto_2d
.end method

.method public static uploadDumpAndLog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "identifier"    # Ljava/lang/String;
    .param p2, "dumpFilename"    # Ljava/lang/String;
    .param p3, "logFilename"    # Ljava/lang/String;

    .prologue
    .line 61
    new-instance v0, Lorg/telegram/messenger/NativeCrashManager$1;

    invoke-direct {v0, p2, p0, p3, p1}, Lorg/telegram/messenger/NativeCrashManager$1;-><init>(Ljava/lang/String;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    invoke-virtual {v0}, Lorg/telegram/messenger/NativeCrashManager$1;->start()V

    .line 100
    return-void
.end method
