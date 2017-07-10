.class public Lnet/hockeyapp/android/ExceptionHandler;
.super Ljava/lang/Object;
.source "ExceptionHandler.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field private mCrashManagerListener:Lnet/hockeyapp/android/CrashManagerListener;

.field private mDefaultExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private mIgnoreDefaultHandler:Z


# direct methods
.method public constructor <init>(Ljava/lang/Thread$UncaughtExceptionHandler;Lnet/hockeyapp/android/CrashManagerListener;Z)V
    .registers 5
    .param p1, "defaultExceptionHandler"    # Ljava/lang/Thread$UncaughtExceptionHandler;
    .param p2, "listener"    # Lnet/hockeyapp/android/CrashManagerListener;
    .param p3, "ignoreDefaultHandler"    # Z

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/hockeyapp/android/ExceptionHandler;->mIgnoreDefaultHandler:Z

    .line 31
    iput-object p1, p0, Lnet/hockeyapp/android/ExceptionHandler;->mDefaultExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 32
    iput-boolean p3, p0, Lnet/hockeyapp/android/ExceptionHandler;->mIgnoreDefaultHandler:Z

    .line 33
    iput-object p2, p0, Lnet/hockeyapp/android/ExceptionHandler;->mCrashManagerListener:Lnet/hockeyapp/android/CrashManagerListener;

    .line 34
    return-void
.end method

.method private static limitedString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    const/16 v1, 0xff

    .line 230
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v1, :cond_13

    .line 231
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 233
    :cond_13
    return-object p0
.end method

.method public static saveException(Ljava/lang/Throwable;Ljava/lang/Thread;Lnet/hockeyapp/android/CrashManagerListener;)V
    .registers 15
    .param p0, "exception"    # Ljava/lang/Throwable;
    .param p1, "thread"    # Ljava/lang/Thread;
    .param p2, "listener"    # Lnet/hockeyapp/android/CrashManagerListener;

    .prologue
    .line 62
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    .line 63
    .local v3, "now":Ljava/util/Date;
    new-instance v6, Ljava/util/Date;

    invoke-static {}, Lnet/hockeyapp/android/CrashManager;->getInitializeTimestamp()J

    move-result-wide v8

    invoke-direct {v6, v8, v9}, Ljava/util/Date;-><init>(J)V

    .line 64
    .local v6, "startDate":Ljava/util/Date;
    new-instance v5, Ljava/io/StringWriter;

    invoke-direct {v5}, Ljava/io/StringWriter;-><init>()V

    .line 65
    .local v5, "result":Ljava/io/Writer;
    new-instance v4, Ljava/io/PrintWriter;

    invoke-direct {v4, v5}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 66
    .local v4, "printWriter":Ljava/io/PrintWriter;
    const/4 v7, 0x0

    .line 67
    .local v7, "writer":Ljava/io/BufferedWriter;
    invoke-virtual {p0, v4}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 69
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    .line 71
    .local v2, "filename":Ljava/lang/String;
    new-instance v0, Lnet/hockeyapp/android/objects/CrashDetails;

    invoke-direct {v0, v2, p0}, Lnet/hockeyapp/android/objects/CrashDetails;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 72
    .local v0, "crashDetails":Lnet/hockeyapp/android/objects/CrashDetails;
    sget-object v8, Lnet/hockeyapp/android/Constants;->APP_PACKAGE:Ljava/lang/String;

    invoke-virtual {v0, v8}, Lnet/hockeyapp/android/objects/CrashDetails;->setAppPackage(Ljava/lang/String;)V

    .line 73
    sget-object v8, Lnet/hockeyapp/android/Constants;->APP_VERSION:Ljava/lang/String;

    invoke-virtual {v0, v8}, Lnet/hockeyapp/android/objects/CrashDetails;->setAppVersionCode(Ljava/lang/String;)V

    .line 74
    sget-object v8, Lnet/hockeyapp/android/Constants;->APP_VERSION_NAME:Ljava/lang/String;

    invoke-virtual {v0, v8}, Lnet/hockeyapp/android/objects/CrashDetails;->setAppVersionName(Ljava/lang/String;)V

    .line 75
    invoke-virtual {v0, v6}, Lnet/hockeyapp/android/objects/CrashDetails;->setAppStartDate(Ljava/util/Date;)V

    .line 76
    invoke-virtual {v0, v3}, Lnet/hockeyapp/android/objects/CrashDetails;->setAppCrashDate(Ljava/util/Date;)V

    .line 78
    if-eqz p2, :cond_46

    invoke-virtual {p2}, Lnet/hockeyapp/android/CrashManagerListener;->includeDeviceData()Z

    move-result v8

    if-eqz v8, :cond_5a

    .line 79
    :cond_46
    sget-object v8, Lnet/hockeyapp/android/Constants;->ANDROID_VERSION:Ljava/lang/String;

    invoke-virtual {v0, v8}, Lnet/hockeyapp/android/objects/CrashDetails;->setOsVersion(Ljava/lang/String;)V

    .line 80
    sget-object v8, Lnet/hockeyapp/android/Constants;->ANDROID_BUILD:Ljava/lang/String;

    invoke-virtual {v0, v8}, Lnet/hockeyapp/android/objects/CrashDetails;->setOsBuild(Ljava/lang/String;)V

    .line 81
    sget-object v8, Lnet/hockeyapp/android/Constants;->PHONE_MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v8}, Lnet/hockeyapp/android/objects/CrashDetails;->setDeviceManufacturer(Ljava/lang/String;)V

    .line 82
    sget-object v8, Lnet/hockeyapp/android/Constants;->PHONE_MODEL:Ljava/lang/String;

    invoke-virtual {v0, v8}, Lnet/hockeyapp/android/objects/CrashDetails;->setDeviceModel(Ljava/lang/String;)V

    .line 85
    :cond_5a
    if-eqz p1, :cond_86

    if-eqz p2, :cond_64

    invoke-virtual {p2}, Lnet/hockeyapp/android/CrashManagerListener;->includeThreadDetails()Z

    move-result v8

    if-eqz v8, :cond_86

    .line 86
    :cond_64
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Ljava/lang/Thread;->getId()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lnet/hockeyapp/android/objects/CrashDetails;->setThreadName(Ljava/lang/String;)V

    .line 89
    :cond_86
    sget-object v8, Lnet/hockeyapp/android/Constants;->CRASH_IDENTIFIER:Ljava/lang/String;

    if-eqz v8, :cond_97

    if-eqz p2, :cond_92

    invoke-virtual {p2}, Lnet/hockeyapp/android/CrashManagerListener;->includeDeviceIdentifier()Z

    move-result v8

    if-eqz v8, :cond_97

    .line 90
    :cond_92
    sget-object v8, Lnet/hockeyapp/android/Constants;->CRASH_IDENTIFIER:Ljava/lang/String;

    invoke-virtual {v0, v8}, Lnet/hockeyapp/android/objects/CrashDetails;->setReporterKey(Ljava/lang/String;)V

    .line 93
    :cond_97
    invoke-virtual {v0}, Lnet/hockeyapp/android/objects/CrashDetails;->writeCrashReport()V

    .line 95
    if-eqz p2, :cond_f2

    .line 97
    :try_start_9c
    invoke-virtual {p2}, Lnet/hockeyapp/android/CrashManagerListener;->getUserID()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lnet/hockeyapp/android/ExceptionHandler;->limitedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".user"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lnet/hockeyapp/android/ExceptionHandler;->writeValueToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    invoke-virtual {p2}, Lnet/hockeyapp/android/CrashManagerListener;->getContact()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lnet/hockeyapp/android/ExceptionHandler;->limitedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".contact"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lnet/hockeyapp/android/ExceptionHandler;->writeValueToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    invoke-virtual {p2}, Lnet/hockeyapp/android/CrashManagerListener;->getDescription()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".description"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lnet/hockeyapp/android/ExceptionHandler;->writeValueToFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f2
    .catch Ljava/io/IOException; {:try_start_9c .. :try_end_f2} :catch_f3

    .line 105
    :cond_f2
    :goto_f2
    return-void

    .line 100
    :catch_f3
    move-exception v1

    .line 101
    .local v1, "e":Ljava/io/IOException;
    const-string v8, "Error saving crash meta data!"

    invoke-static {v8, v1}, Lnet/hockeyapp/android/utils/HockeyLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_f2
.end method

.method public static saveException(Ljava/lang/Throwable;Lnet/hockeyapp/android/CrashManagerListener;)V
    .registers 3
    .param p0, "exception"    # Ljava/lang/Throwable;
    .param p1, "listener"    # Lnet/hockeyapp/android/CrashManagerListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 51
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lnet/hockeyapp/android/ExceptionHandler;->saveException(Ljava/lang/Throwable;Ljava/lang/Thread;Lnet/hockeyapp/android/CrashManagerListener;)V

    .line 52
    return-void
.end method

.method public static saveManagedException(Ljava/lang/Throwable;Ljava/lang/Thread;Lnet/hockeyapp/android/CrashManagerListener;)V
    .registers 5
    .param p0, "exception"    # Ljava/lang/Throwable;
    .param p1, "thread"    # Ljava/lang/Thread;
    .param p2, "listener"    # Lnet/hockeyapp/android/CrashManagerListener;

    .prologue
    .line 141
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p0, p1, v0, v1, p2}, Lnet/hockeyapp/android/ExceptionHandler;->saveXamarinException(Ljava/lang/Throwable;Ljava/lang/Thread;Ljava/lang/String;Ljava/lang/Boolean;Lnet/hockeyapp/android/CrashManagerListener;)V

    .line 142
    return-void
.end method

.method public static saveNativeException(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Thread;Lnet/hockeyapp/android/CrashManagerListener;)V
    .registers 8
    .param p0, "exception"    # Ljava/lang/Throwable;
    .param p1, "managedExceptionString"    # Ljava/lang/String;
    .param p2, "thread"    # Ljava/lang/Thread;
    .param p3, "listener"    # Lnet/hockeyapp/android/CrashManagerListener;

    .prologue
    const/4 v3, 0x0

    .line 122
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_15

    .line 123
    const-string v1, "--- End of managed exception stack trace ---"

    const/4 v2, 0x2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 124
    .local v0, "splits":[Ljava/lang/String;
    if-eqz v0, :cond_15

    array-length v1, v0

    if-lez v1, :cond_15

    .line 125
    aget-object p1, v0, v3

    .line 129
    .end local v0    # "splits":[Ljava/lang/String;
    :cond_15
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p0, p2, p1, v1, p3}, Lnet/hockeyapp/android/ExceptionHandler;->saveXamarinException(Ljava/lang/Throwable;Ljava/lang/Thread;Ljava/lang/String;Ljava/lang/Boolean;Lnet/hockeyapp/android/CrashManagerListener;)V

    .line 130
    return-void
.end method

.method private static saveXamarinException(Ljava/lang/Throwable;Ljava/lang/Thread;Ljava/lang/String;Ljava/lang/Boolean;Lnet/hockeyapp/android/CrashManagerListener;)V
    .registers 15
    .param p0, "exception"    # Ljava/lang/Throwable;
    .param p1, "thread"    # Ljava/lang/Thread;
    .param p2, "additionalManagedException"    # Ljava/lang/String;
    .param p3, "isManagedException"    # Ljava/lang/Boolean;
    .param p4, "listener"    # Lnet/hockeyapp/android/CrashManagerListener;

    .prologue
    .line 145
    new-instance v6, Ljava/util/Date;

    invoke-static {}, Lnet/hockeyapp/android/CrashManager;->getInitializeTimestamp()J

    move-result-wide v8

    invoke-direct {v6, v8, v9}, Ljava/util/Date;-><init>(J)V

    .line 146
    .local v6, "startDate":Ljava/util/Date;
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    .line 147
    .local v2, "filename":Ljava/lang/String;
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    .line 149
    .local v3, "now":Ljava/util/Date;
    new-instance v5, Ljava/io/StringWriter;

    invoke-direct {v5}, Ljava/io/StringWriter;-><init>()V

    .line 150
    .local v5, "result":Ljava/io/Writer;
    new-instance v4, Ljava/io/PrintWriter;

    invoke-direct {v4, v5}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 151
    .local v4, "printWriter":Ljava/io/PrintWriter;
    if-eqz p0, :cond_25

    .line 152
    invoke-virtual {p0, v4}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 155
    :cond_25
    new-instance v0, Lnet/hockeyapp/android/objects/CrashDetails;

    invoke-direct {v0, v2, p0, p2, p3}, Lnet/hockeyapp/android/objects/CrashDetails;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 156
    .local v0, "crashDetails":Lnet/hockeyapp/android/objects/CrashDetails;
    sget-object v7, Lnet/hockeyapp/android/Constants;->APP_PACKAGE:Ljava/lang/String;

    invoke-virtual {v0, v7}, Lnet/hockeyapp/android/objects/CrashDetails;->setAppPackage(Ljava/lang/String;)V

    .line 157
    sget-object v7, Lnet/hockeyapp/android/Constants;->APP_VERSION:Ljava/lang/String;

    invoke-virtual {v0, v7}, Lnet/hockeyapp/android/objects/CrashDetails;->setAppVersionCode(Ljava/lang/String;)V

    .line 158
    sget-object v7, Lnet/hockeyapp/android/Constants;->APP_VERSION_NAME:Ljava/lang/String;

    invoke-virtual {v0, v7}, Lnet/hockeyapp/android/objects/CrashDetails;->setAppVersionName(Ljava/lang/String;)V

    .line 159
    invoke-virtual {v0, v6}, Lnet/hockeyapp/android/objects/CrashDetails;->setAppStartDate(Ljava/util/Date;)V

    .line 160
    invoke-virtual {v0, v3}, Lnet/hockeyapp/android/objects/CrashDetails;->setAppCrashDate(Ljava/util/Date;)V

    .line 162
    if-eqz p4, :cond_47

    invoke-virtual {p4}, Lnet/hockeyapp/android/CrashManagerListener;->includeDeviceData()Z

    move-result v7

    if-eqz v7, :cond_5b

    .line 163
    :cond_47
    sget-object v7, Lnet/hockeyapp/android/Constants;->ANDROID_VERSION:Ljava/lang/String;

    invoke-virtual {v0, v7}, Lnet/hockeyapp/android/objects/CrashDetails;->setOsVersion(Ljava/lang/String;)V

    .line 164
    sget-object v7, Lnet/hockeyapp/android/Constants;->ANDROID_BUILD:Ljava/lang/String;

    invoke-virtual {v0, v7}, Lnet/hockeyapp/android/objects/CrashDetails;->setOsBuild(Ljava/lang/String;)V

    .line 165
    sget-object v7, Lnet/hockeyapp/android/Constants;->PHONE_MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v7}, Lnet/hockeyapp/android/objects/CrashDetails;->setDeviceManufacturer(Ljava/lang/String;)V

    .line 166
    sget-object v7, Lnet/hockeyapp/android/Constants;->PHONE_MODEL:Ljava/lang/String;

    invoke-virtual {v0, v7}, Lnet/hockeyapp/android/objects/CrashDetails;->setDeviceModel(Ljava/lang/String;)V

    .line 169
    :cond_5b
    if-eqz p1, :cond_87

    if-eqz p4, :cond_65

    invoke-virtual {p4}, Lnet/hockeyapp/android/CrashManagerListener;->includeThreadDetails()Z

    move-result v7

    if-eqz v7, :cond_87

    .line 170
    :cond_65
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Ljava/lang/Thread;->getId()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lnet/hockeyapp/android/objects/CrashDetails;->setThreadName(Ljava/lang/String;)V

    .line 173
    :cond_87
    sget-object v7, Lnet/hockeyapp/android/Constants;->CRASH_IDENTIFIER:Ljava/lang/String;

    if-eqz v7, :cond_98

    if-eqz p4, :cond_93

    invoke-virtual {p4}, Lnet/hockeyapp/android/CrashManagerListener;->includeDeviceIdentifier()Z

    move-result v7

    if-eqz v7, :cond_98

    .line 174
    :cond_93
    sget-object v7, Lnet/hockeyapp/android/Constants;->CRASH_IDENTIFIER:Ljava/lang/String;

    invoke-virtual {v0, v7}, Lnet/hockeyapp/android/objects/CrashDetails;->setReporterKey(Ljava/lang/String;)V

    .line 177
    :cond_98
    invoke-virtual {v0}, Lnet/hockeyapp/android/objects/CrashDetails;->writeCrashReport()V

    .line 179
    if-eqz p4, :cond_f3

    .line 181
    :try_start_9d
    invoke-virtual {p4}, Lnet/hockeyapp/android/CrashManagerListener;->getUserID()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lnet/hockeyapp/android/ExceptionHandler;->limitedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".user"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lnet/hockeyapp/android/ExceptionHandler;->writeValueToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    invoke-virtual {p4}, Lnet/hockeyapp/android/CrashManagerListener;->getContact()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lnet/hockeyapp/android/ExceptionHandler;->limitedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".contact"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lnet/hockeyapp/android/ExceptionHandler;->writeValueToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    invoke-virtual {p4}, Lnet/hockeyapp/android/CrashManagerListener;->getDescription()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".description"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lnet/hockeyapp/android/ExceptionHandler;->writeValueToFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f3
    .catch Ljava/io/IOException; {:try_start_9d .. :try_end_f3} :catch_f4

    .line 189
    :cond_f3
    :goto_f3
    return-void

    .line 184
    :catch_f4
    move-exception v1

    .line 185
    .local v1, "e":Ljava/io/IOException;
    const-string v7, "Error saving crash meta data!"

    invoke-static {v7, v1}, Lnet/hockeyapp/android/utils/HockeyLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_f3
.end method

.method private static writeValueToFile(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 209
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 227
    :cond_6
    :goto_6
    return-void

    .line 212
    :cond_7
    const/4 v1, 0x0

    .line 214
    .local v1, "writer":Ljava/io/BufferedWriter;
    :try_start_8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lnet/hockeyapp/android/Constants;->FILES_PATH:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 215
    .local v0, "path":Ljava/lang/String;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3e

    invoke-static {p0}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v3

    if-lez v3, :cond_3e

    .line 216
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/FileWriter;

    invoke-direct {v3, v0}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_37} :catch_44
    .catchall {:try_start_8 .. :try_end_37} :catchall_4b

    .line 217
    .end local v1    # "writer":Ljava/io/BufferedWriter;
    .local v2, "writer":Ljava/io/BufferedWriter;
    :try_start_37
    invoke-virtual {v2, p0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 218
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->flush()V
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_3d} :catch_55
    .catchall {:try_start_37 .. :try_end_3d} :catchall_52

    move-object v1, v2

    .line 223
    .end local v2    # "writer":Ljava/io/BufferedWriter;
    .restart local v1    # "writer":Ljava/io/BufferedWriter;
    :cond_3e
    if-eqz v1, :cond_6

    .line 224
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V

    goto :goto_6

    .line 220
    .end local v0    # "path":Ljava/lang/String;
    :catch_44
    move-exception v3

    .line 223
    :goto_45
    if-eqz v1, :cond_6

    .line 224
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V

    goto :goto_6

    .line 223
    :catchall_4b
    move-exception v3

    :goto_4c
    if-eqz v1, :cond_51

    .line 224
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V

    :cond_51
    throw v3

    .line 223
    .end local v1    # "writer":Ljava/io/BufferedWriter;
    .restart local v0    # "path":Ljava/lang/String;
    .restart local v2    # "writer":Ljava/io/BufferedWriter;
    :catchall_52
    move-exception v3

    move-object v1, v2

    .end local v2    # "writer":Ljava/io/BufferedWriter;
    .restart local v1    # "writer":Ljava/io/BufferedWriter;
    goto :goto_4c

    .line 220
    .end local v1    # "writer":Ljava/io/BufferedWriter;
    .restart local v2    # "writer":Ljava/io/BufferedWriter;
    :catch_55
    move-exception v3

    move-object v1, v2

    .end local v2    # "writer":Ljava/io/BufferedWriter;
    .restart local v1    # "writer":Ljava/io/BufferedWriter;
    goto :goto_45
.end method


# virtual methods
.method public setListener(Lnet/hockeyapp/android/CrashManagerListener;)V
    .registers 2
    .param p1, "listener"    # Lnet/hockeyapp/android/CrashManagerListener;

    .prologue
    .line 37
    iput-object p1, p0, Lnet/hockeyapp/android/ExceptionHandler;->mCrashManagerListener:Lnet/hockeyapp/android/CrashManagerListener;

    .line 38
    return-void
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "thread"    # Ljava/lang/Thread;
    .param p2, "exception"    # Ljava/lang/Throwable;

    .prologue
    .line 192
    sget-object v0, Lnet/hockeyapp/android/Constants;->FILES_PATH:Ljava/lang/String;

    if-nez v0, :cond_a

    .line 195
    iget-object v0, p0, Lnet/hockeyapp/android/ExceptionHandler;->mDefaultExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 206
    :goto_9
    return-void

    .line 197
    :cond_a
    iget-object v0, p0, Lnet/hockeyapp/android/ExceptionHandler;->mCrashManagerListener:Lnet/hockeyapp/android/CrashManagerListener;

    invoke-static {p2, p1, v0}, Lnet/hockeyapp/android/ExceptionHandler;->saveException(Ljava/lang/Throwable;Ljava/lang/Thread;Lnet/hockeyapp/android/CrashManagerListener;)V

    .line 199
    iget-boolean v0, p0, Lnet/hockeyapp/android/ExceptionHandler;->mIgnoreDefaultHandler:Z

    if-nez v0, :cond_19

    .line 200
    iget-object v0, p0, Lnet/hockeyapp/android/ExceptionHandler;->mDefaultExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_9

    .line 202
    :cond_19
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 203
    const/16 v0, 0xa

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    goto :goto_9
.end method
