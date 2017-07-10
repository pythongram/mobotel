.class public Lnet/hockeyapp/android/tasks/CheckUpdateTask;
.super Landroid/os/AsyncTask;
.source "CheckUpdateTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        "Lorg/json/JSONArray;",
        ">;"
    }
.end annotation


# static fields
.field protected static final APK:Ljava/lang/String; = "apk"

.field private static final MAX_NUMBER_OF_VERSIONS:I = 0x19


# instance fields
.field protected appIdentifier:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field protected listener:Lnet/hockeyapp/android/UpdateManagerListener;

.field protected mandatory:Ljava/lang/Boolean;

.field protected urlString:Ljava/lang/String;

.field private usageTime:J


# direct methods
.method public constructor <init>(Ljava/lang/ref/WeakReference;Ljava/lang/String;)V
    .registers 4
    .param p2, "urlString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<+",
            "Landroid/content/Context;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 54
    .local p1, "weakContext":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<+Landroid/content/Context;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lnet/hockeyapp/android/tasks/CheckUpdateTask;-><init>(Ljava/lang/ref/WeakReference;Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Ljava/lang/ref/WeakReference;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p2, "urlString"    # Ljava/lang/String;
    .param p3, "appIdentifier"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<+",
            "Landroid/content/Context;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 58
    .local p1, "weakContext":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<+Landroid/content/Context;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lnet/hockeyapp/android/tasks/CheckUpdateTask;-><init>(Ljava/lang/ref/WeakReference;Ljava/lang/String;Ljava/lang/String;Lnet/hockeyapp/android/UpdateManagerListener;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Ljava/lang/ref/WeakReference;Ljava/lang/String;Ljava/lang/String;Lnet/hockeyapp/android/UpdateManagerListener;)V
    .registers 9
    .param p2, "urlString"    # Ljava/lang/String;
    .param p3, "appIdentifier"    # Ljava/lang/String;
    .param p4, "listener"    # Lnet/hockeyapp/android/UpdateManagerListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<+",
            "Landroid/content/Context;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lnet/hockeyapp/android/UpdateManagerListener;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "weakContext":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<+Landroid/content/Context;>;"
    const/4 v1, 0x0

    .line 61
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 45
    iput-object v1, p0, Lnet/hockeyapp/android/tasks/CheckUpdateTask;->urlString:Ljava/lang/String;

    .line 46
    iput-object v1, p0, Lnet/hockeyapp/android/tasks/CheckUpdateTask;->appIdentifier:Ljava/lang/String;

    .line 48
    iput-object v1, p0, Lnet/hockeyapp/android/tasks/CheckUpdateTask;->context:Landroid/content/Context;

    .line 49
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lnet/hockeyapp/android/tasks/CheckUpdateTask;->mandatory:Ljava/lang/Boolean;

    .line 51
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lnet/hockeyapp/android/tasks/CheckUpdateTask;->usageTime:J

    .line 62
    iput-object p3, p0, Lnet/hockeyapp/android/tasks/CheckUpdateTask;->appIdentifier:Ljava/lang/String;

    .line 63
    iput-object p2, p0, Lnet/hockeyapp/android/tasks/CheckUpdateTask;->urlString:Ljava/lang/String;

    .line 64
    iput-object p4, p0, Lnet/hockeyapp/android/tasks/CheckUpdateTask;->listener:Lnet/hockeyapp/android/UpdateManagerListener;

    .line 66
    const/4 v0, 0x0

    .line 67
    .local v0, "ctx":Landroid/content/Context;
    if-eqz p1, :cond_24

    .line 68
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "ctx":Landroid/content/Context;
    check-cast v0, Landroid/content/Context;

    .line 71
    .restart local v0    # "ctx":Landroid/content/Context;
    :cond_24
    if-eqz v0, :cond_35

    .line 72
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lnet/hockeyapp/android/tasks/CheckUpdateTask;->context:Landroid/content/Context;

    .line 73
    invoke-static {v0}, Lnet/hockeyapp/android/Tracking;->getUsageTime(Landroid/content/Context;)J

    move-result-wide v2

    iput-wide v2, p0, Lnet/hockeyapp/android/tasks/CheckUpdateTask;->usageTime:J

    .line 74
    invoke-static {v0}, Lnet/hockeyapp/android/Constants;->loadFromContext(Landroid/content/Context;)V

    .line 76
    :cond_35
    return-void
.end method

.method private static convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 7
    .param p0, "inputStream"    # Ljava/io/InputStream;

    .prologue
    .line 259
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v5, 0x400

    invoke-direct {v2, v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 260
    .local v2, "reader":Ljava/io/BufferedReader;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 262
    .local v3, "stringBuilder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 264
    .local v1, "line":Ljava/lang/String;
    :goto_12
    :try_start_12
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3b

    .line 265
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_2e} :catch_2f
    .catchall {:try_start_12 .. :try_end_2e} :catchall_49

    goto :goto_12

    .line 267
    :catch_2f
    move-exception v0

    .line 268
    .local v0, "e":Ljava/io/IOException;
    :try_start_30
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_33
    .catchall {:try_start_30 .. :try_end_33} :catchall_49

    .line 271
    :try_start_33
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_36} :catch_44

    .line 276
    .end local v0    # "e":Ljava/io/IOException;
    :goto_36
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 271
    :cond_3b
    :try_start_3b
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_3e} :catch_3f

    goto :goto_36

    .line 272
    :catch_3f
    move-exception v0

    .line 273
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_36

    .line 272
    :catch_44
    move-exception v0

    .line 273
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_36

    .line 270
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_49
    move-exception v4

    .line 271
    :try_start_4a
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_4d} :catch_4e

    .line 274
    :goto_4d
    throw v4

    .line 272
    :catch_4e
    move-exception v0

    .line 273
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4d
.end method

.method private encodeParam(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "param"    # Ljava/lang/String;

    .prologue
    .line 236
    :try_start_0
    const-string v1, "UTF-8"

    invoke-static {p1, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 239
    :goto_6
    return-object v1

    .line 237
    :catch_7
    move-exception v0

    .line 239
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    const-string v1, ""

    goto :goto_6
.end method

.method private findNewVersion(Lorg/json/JSONArray;I)Z
    .registers 15
    .param p1, "json"    # Lorg/json/JSONArray;
    .param p2, "versionCode"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 142
    const/4 v6, 0x0

    .line 144
    .local v6, "newerVersionFound":Z
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_4
    :try_start_4
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v2, v9, :cond_6e

    .line 145
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 147
    .local v1, "entry":Lorg/json/JSONObject;
    const-string v9, "version"

    invoke-virtual {v1, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    if-le v9, p2, :cond_66

    move v3, v8

    .line 148
    .local v3, "largerVersionCode":Z
    :goto_17
    const-string v9, "version"

    invoke-virtual {v1, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    if-ne v9, p2, :cond_68

    iget-object v9, p0, Lnet/hockeyapp/android/tasks/CheckUpdateTask;->context:Landroid/content/Context;

    const-string v10, "timestamp"

    invoke-virtual {v1, v10}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v10

    invoke-static {v9, v10, v11}, Lnet/hockeyapp/android/utils/VersionHelper;->isNewerThanLastUpdateTime(Landroid/content/Context;J)Z

    move-result v9

    if-eqz v9, :cond_68

    move v5, v8

    .line 149
    .local v5, "newerApkFile":Z
    :goto_2e
    const-string v9, "minimum_os_version"

    invoke-virtual {v1, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    sget-object v10, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-static {v10}, Lnet/hockeyapp/android/utils/VersionHelper;->mapGoogleVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lnet/hockeyapp/android/utils/VersionHelper;->compareVersionStrings(Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    if-gtz v9, :cond_6a

    move v4, v8

    .line 151
    .local v4, "minRequirementsMet":Z
    :goto_41
    if-nez v3, :cond_45

    if-eqz v5, :cond_63

    :cond_45
    if-eqz v4, :cond_63

    .line 152
    const-string v9, "mandatory"

    invoke-virtual {v1, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_62

    .line 153
    iget-object v9, p0, Lnet/hockeyapp/android/tasks/CheckUpdateTask;->mandatory:Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    const-string v10, "mandatory"

    invoke-virtual {v1, v10}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    or-int/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    iput-object v9, p0, Lnet/hockeyapp/android/tasks/CheckUpdateTask;->mandatory:Ljava/lang/Boolean;
    :try_end_62
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_62} :catch_6c

    .line 155
    :cond_62
    const/4 v6, 0x1

    .line 144
    :cond_63
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .end local v3    # "largerVersionCode":Z
    .end local v4    # "minRequirementsMet":Z
    .end local v5    # "newerApkFile":Z
    :cond_66
    move v3, v7

    .line 147
    goto :goto_17

    .restart local v3    # "largerVersionCode":Z
    :cond_68
    move v5, v7

    .line 148
    goto :goto_2e

    .restart local v5    # "newerApkFile":Z
    :cond_6a
    move v4, v7

    .line 149
    goto :goto_41

    .line 160
    .end local v1    # "entry":Lorg/json/JSONObject;
    .end local v3    # "largerVersionCode":Z
    .end local v5    # "newerApkFile":Z
    :catch_6c
    move-exception v0

    .local v0, "e":Lorg/json/JSONException;
    move v6, v7

    .line 161
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v6    # "newerVersionFound":Z
    :cond_6e
    return v6
.end method

.method private limitResponseSize(Lorg/json/JSONArray;)Lorg/json/JSONArray;
    .registers 6
    .param p1, "json"    # Lorg/json/JSONArray;

    .prologue
    .line 166
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 167
    .local v1, "result":Lorg/json/JSONArray;
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_6
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    const/16 v3, 0x19

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    if-ge v0, v2, :cond_1c

    .line 169
    :try_start_12
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_19
    .catch Lorg/json/JSONException; {:try_start_12 .. :try_end_19} :catch_1d

    .line 167
    :goto_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 173
    :cond_1c
    return-object v1

    .line 170
    :catch_1d
    move-exception v2

    goto :goto_19
.end method


# virtual methods
.method public attach(Ljava/lang/ref/WeakReference;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<+",
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 79
    .local p1, "weakContext":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<+Landroid/content/Context;>;"
    const/4 v0, 0x0

    .line 80
    .local v0, "ctx":Landroid/content/Context;
    if-eqz p1, :cond_9

    .line 81
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "ctx":Landroid/content/Context;
    check-cast v0, Landroid/content/Context;

    .line 84
    .restart local v0    # "ctx":Landroid/content/Context;
    :cond_9
    if-eqz v0, :cond_14

    .line 85
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lnet/hockeyapp/android/tasks/CheckUpdateTask;->context:Landroid/content/Context;

    .line 86
    invoke-static {v0}, Lnet/hockeyapp/android/Constants;->loadFromContext(Landroid/content/Context;)V

    .line 88
    :cond_14
    return-void
.end method

.method protected cleanUp()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 194
    iput-object v0, p0, Lnet/hockeyapp/android/tasks/CheckUpdateTask;->urlString:Ljava/lang/String;

    .line 195
    iput-object v0, p0, Lnet/hockeyapp/android/tasks/CheckUpdateTask;->appIdentifier:Ljava/lang/String;

    .line 196
    return-void
.end method

.method protected createConnection(Ljava/net/URL;)Ljava/net/URLConnection;
    .registers 5
    .param p1, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 131
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    .line 132
    .local v0, "connection":Ljava/net/URLConnection;
    const-string v1, "User-Agent"

    const-string v2, "HockeySDK/Android 4.1.2"

    invoke-virtual {v0, v1, v2}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-gt v1, v2, :cond_18

    .line 135
    const-string v1, "connection"

    const-string v2, "close"

    invoke-virtual {v0, v1, v2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    :cond_18
    return-object v0
.end method

.method public detach()V
    .registers 2

    .prologue
    .line 91
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/hockeyapp/android/tasks/CheckUpdateTask;->context:Landroid/content/Context;

    .line 92
    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 40
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lnet/hockeyapp/android/tasks/CheckUpdateTask;->doInBackground([Ljava/lang/Void;)Lorg/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Lorg/json/JSONArray;
    .registers 11
    .param p1, "args"    # [Ljava/lang/Void;

    .prologue
    .line 101
    :try_start_0
    invoke-virtual {p0}, Lnet/hockeyapp/android/tasks/CheckUpdateTask;->getVersionCode()I

    move-result v6

    .line 103
    .local v6, "versionCode":I
    new-instance v3, Lorg/json/JSONArray;

    iget-object v7, p0, Lnet/hockeyapp/android/tasks/CheckUpdateTask;->context:Landroid/content/Context;

    invoke-static {v7}, Lnet/hockeyapp/android/utils/VersionCache;->getVersionInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 105
    .local v3, "json":Lorg/json/JSONArray;
    invoke-virtual {p0}, Lnet/hockeyapp/android/tasks/CheckUpdateTask;->getCachingEnabled()Z

    move-result v7

    if-eqz v7, :cond_23

    invoke-direct {p0, v3, v6}, Lnet/hockeyapp/android/tasks/CheckUpdateTask;->findNewVersion(Lorg/json/JSONArray;I)Z

    move-result v7

    if-eqz v7, :cond_23

    .line 106
    const-string v7, "HockeyUpdate"

    const-string v8, "Returning cached JSON"

    invoke-static {v7, v8}, Lnet/hockeyapp/android/utils/HockeyLog;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    .end local v3    # "json":Lorg/json/JSONArray;
    .end local v6    # "versionCode":I
    :goto_22
    return-object v3

    .line 110
    .restart local v3    # "json":Lorg/json/JSONArray;
    .restart local v6    # "versionCode":I
    :cond_23
    new-instance v5, Ljava/net/URL;

    const-string v7, "json"

    invoke-virtual {p0, v7}, Lnet/hockeyapp/android/tasks/CheckUpdateTask;->getURLString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 111
    .local v5, "url":Ljava/net/URL;
    invoke-virtual {p0, v5}, Lnet/hockeyapp/android/tasks/CheckUpdateTask;->createConnection(Ljava/net/URL;)Ljava/net/URLConnection;

    move-result-object v0

    .line 112
    .local v0, "connection":Ljava/net/URLConnection;
    invoke-virtual {v0}, Ljava/net/URLConnection;->connect()V

    .line 114
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v2, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 115
    .local v2, "inputStream":Ljava/io/InputStream;
    invoke-static {v2}, Lnet/hockeyapp/android/tasks/CheckUpdateTask;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v4

    .line 116
    .local v4, "jsonString":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 118
    new-instance v3, Lorg/json/JSONArray;

    .end local v3    # "json":Lorg/json/JSONArray;
    invoke-direct {v3, v4}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 119
    .restart local v3    # "json":Lorg/json/JSONArray;
    invoke-direct {p0, v3, v6}, Lnet/hockeyapp/android/tasks/CheckUpdateTask;->findNewVersion(Lorg/json/JSONArray;I)Z

    move-result v7

    if-eqz v7, :cond_59

    .line 120
    invoke-direct {p0, v3}, Lnet/hockeyapp/android/tasks/CheckUpdateTask;->limitResponseSize(Lorg/json/JSONArray;)Lorg/json/JSONArray;
    :try_end_53
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_53} :catch_5b
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_53} :catch_55

    move-result-object v3

    .line 121
    goto :goto_22

    .line 123
    .end local v0    # "connection":Ljava/net/URLConnection;
    .end local v2    # "inputStream":Ljava/io/InputStream;
    .end local v3    # "json":Lorg/json/JSONArray;
    .end local v4    # "jsonString":Ljava/lang/String;
    .end local v5    # "url":Ljava/net/URL;
    .end local v6    # "versionCode":I
    :catch_55
    move-exception v1

    .line 124
    .local v1, "e":Ljava/lang/Exception;
    :goto_56
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 127
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_59
    const/4 v3, 0x0

    goto :goto_22

    .line 123
    :catch_5b
    move-exception v1

    goto :goto_56
.end method

.method protected getCachingEnabled()Z
    .registers 2

    .prologue
    .line 244
    const/4 v0, 0x1

    return v0
.end method

.method protected getURLString(Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .param p1, "format"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 199
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 200
    .local v1, "builder":Ljava/lang/StringBuilder;
    iget-object v5, p0, Lnet/hockeyapp/android/tasks/CheckUpdateTask;->urlString:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    const-string v5, "api/2/apps/"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    iget-object v5, p0, Lnet/hockeyapp/android/tasks/CheckUpdateTask;->appIdentifier:Ljava/lang/String;

    if-eqz v5, :cond_1a8

    iget-object v5, p0, Lnet/hockeyapp/android/tasks/CheckUpdateTask;->appIdentifier:Ljava/lang/String;

    :goto_16
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "?format="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    iget-object v5, p0, Lnet/hockeyapp/android/tasks/CheckUpdateTask;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "android_id"

    invoke-static {v5, v6}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 206
    .local v2, "deviceIdentifier":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_67

    .line 207
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "&udid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lnet/hockeyapp/android/tasks/CheckUpdateTask;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "android_id"

    invoke-static {v6, v7}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lnet/hockeyapp/android/tasks/CheckUpdateTask;->encodeParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    :cond_67
    iget-object v5, p0, Lnet/hockeyapp/android/tasks/CheckUpdateTask;->context:Landroid/content/Context;

    const-string v6, "net.hockeyapp.android.login"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 211
    .local v4, "prefs":Landroid/content/SharedPreferences;
    const-string v5, "auid"

    invoke-interface {v4, v5, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 212
    .local v0, "auid":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_96

    .line 213
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "&auid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0, v0}, Lnet/hockeyapp/android/tasks/CheckUpdateTask;->encodeParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    :cond_96
    const-string v5, "iuid"

    invoke-interface {v4, v5, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 217
    .local v3, "iuid":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_bc

    .line 218
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "&iuid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0, v3}, Lnet/hockeyapp/android/tasks/CheckUpdateTask;->encodeParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    :cond_bc
    const-string v5, "&os=Android"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "&os_version="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lnet/hockeyapp/android/Constants;->ANDROID_VERSION:Ljava/lang/String;

    invoke-direct {p0, v6}, Lnet/hockeyapp/android/tasks/CheckUpdateTask;->encodeParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "&device="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lnet/hockeyapp/android/Constants;->PHONE_MODEL:Ljava/lang/String;

    invoke-direct {p0, v6}, Lnet/hockeyapp/android/tasks/CheckUpdateTask;->encodeParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "&oem="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lnet/hockeyapp/android/Constants;->PHONE_MANUFACTURER:Ljava/lang/String;

    invoke-direct {p0, v6}, Lnet/hockeyapp/android/tasks/CheckUpdateTask;->encodeParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "&app_version="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lnet/hockeyapp/android/Constants;->APP_VERSION:Ljava/lang/String;

    invoke-direct {p0, v6}, Lnet/hockeyapp/android/tasks/CheckUpdateTask;->encodeParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "&sdk="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "HockeySDK"

    invoke-direct {p0, v6}, Lnet/hockeyapp/android/tasks/CheckUpdateTask;->encodeParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "&sdk_version="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "4.1.2"

    invoke-direct {p0, v6}, Lnet/hockeyapp/android/tasks/CheckUpdateTask;->encodeParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "&lang="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lnet/hockeyapp/android/tasks/CheckUpdateTask;->encodeParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "&usage_time="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lnet/hockeyapp/android/tasks/CheckUpdateTask;->usageTime:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 202
    .end local v0    # "auid":Ljava/lang/String;
    .end local v2    # "deviceIdentifier":Ljava/lang/String;
    .end local v3    # "iuid":Ljava/lang/String;
    .end local v4    # "prefs":Landroid/content/SharedPreferences;
    :cond_1a8
    iget-object v5, p0, Lnet/hockeyapp/android/tasks/CheckUpdateTask;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_16
.end method

.method protected getVersionCode()I
    .registers 2

    .prologue
    .line 95
    sget-object v0, Lnet/hockeyapp/android/Constants;->APP_VERSION:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 40
    check-cast p1, Lorg/json/JSONArray;

    invoke-virtual {p0, p1}, Lnet/hockeyapp/android/tasks/CheckUpdateTask;->onPostExecute(Lorg/json/JSONArray;)V

    return-void
.end method

.method protected onPostExecute(Lorg/json/JSONArray;)V
    .registers 4
    .param p1, "updateInfo"    # Lorg/json/JSONArray;

    .prologue
    .line 178
    if-eqz p1, :cond_19

    .line 179
    const-string v0, "HockeyUpdate"

    const-string v1, "Received Update Info"

    invoke-static {v0, v1}, Lnet/hockeyapp/android/utils/HockeyLog;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    iget-object v0, p0, Lnet/hockeyapp/android/tasks/CheckUpdateTask;->listener:Lnet/hockeyapp/android/UpdateManagerListener;

    if-eqz v0, :cond_18

    .line 182
    iget-object v0, p0, Lnet/hockeyapp/android/tasks/CheckUpdateTask;->listener:Lnet/hockeyapp/android/UpdateManagerListener;

    const-string v1, "apk"

    invoke-virtual {p0, v1}, Lnet/hockeyapp/android/tasks/CheckUpdateTask;->getURLString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lnet/hockeyapp/android/UpdateManagerListener;->onUpdateAvailable(Lorg/json/JSONArray;Ljava/lang/String;)V

    .line 191
    :cond_18
    :goto_18
    return-void

    .line 185
    :cond_19
    const-string v0, "HockeyUpdate"

    const-string v1, "No Update Info available"

    invoke-static {v0, v1}, Lnet/hockeyapp/android/utils/HockeyLog;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    iget-object v0, p0, Lnet/hockeyapp/android/tasks/CheckUpdateTask;->listener:Lnet/hockeyapp/android/UpdateManagerListener;

    if-eqz v0, :cond_18

    .line 188
    iget-object v0, p0, Lnet/hockeyapp/android/tasks/CheckUpdateTask;->listener:Lnet/hockeyapp/android/UpdateManagerListener;

    invoke-virtual {v0}, Lnet/hockeyapp/android/UpdateManagerListener;->onNoUpdateAvailable()V

    goto :goto_18
.end method
