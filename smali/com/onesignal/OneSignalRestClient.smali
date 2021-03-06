.class Lcom/onesignal/OneSignalRestClient;
.super Ljava/lang/Object;
.source "OneSignalRestClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onesignal/OneSignalRestClient$ResponseHandler;
    }
.end annotation


# static fields
.field private static final BASE_URL:Ljava/lang/String; = "https://onesignal.com/api/v1/"

.field private static final GET_TIMEOUT:I = 0xea60

.field private static final TIMEOUT:I = 0x1d4c0


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/onesignal/OneSignalRestClient$ResponseHandler;I)V
    .registers 5
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lorg/json/JSONObject;
    .param p3, "x3"    # Lcom/onesignal/OneSignalRestClient$ResponseHandler;
    .param p4, "x4"    # I

    .prologue
    .line 38
    invoke-static {p0, p1, p2, p3, p4}, Lcom/onesignal/OneSignalRestClient;->makeRequest(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/onesignal/OneSignalRestClient$ResponseHandler;I)V

    return-void
.end method

.method static synthetic access$100(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/onesignal/OneSignalRestClient$ResponseHandler;I)Ljava/lang/Thread;
    .registers 6
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lorg/json/JSONObject;
    .param p3, "x3"    # Lcom/onesignal/OneSignalRestClient$ResponseHandler;
    .param p4, "x4"    # I

    .prologue
    .line 38
    invoke-static {p0, p1, p2, p3, p4}, Lcom/onesignal/OneSignalRestClient;->startHTTPConnection(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/onesignal/OneSignalRestClient$ResponseHandler;I)Ljava/lang/Thread;

    move-result-object v0

    return-object v0
.end method

.method private static callResponseHandlerOnFailure(Lcom/onesignal/OneSignalRestClient$ResponseHandler;ILjava/lang/String;Ljava/lang/Throwable;)Ljava/lang/Thread;
    .registers 6
    .param p0, "handler"    # Lcom/onesignal/OneSignalRestClient$ResponseHandler;
    .param p1, "statusCode"    # I
    .param p2, "response"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 213
    if-nez p0, :cond_4

    .line 214
    const/4 v0, 0x0

    .line 223
    :goto_3
    return-object v0

    .line 216
    :cond_4
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/onesignal/OneSignalRestClient$6;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/onesignal/OneSignalRestClient$6;-><init>(Lcom/onesignal/OneSignalRestClient$ResponseHandler;ILjava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 221
    .local v0, "thread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_3
.end method

.method private static callResponseHandlerOnSuccess(Lcom/onesignal/OneSignalRestClient$ResponseHandler;Ljava/lang/String;)Ljava/lang/Thread;
    .registers 4
    .param p0, "handler"    # Lcom/onesignal/OneSignalRestClient$ResponseHandler;
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    .line 199
    if-nez p0, :cond_4

    .line 200
    const/4 v0, 0x0

    .line 209
    :goto_3
    return-object v0

    .line 202
    :cond_4
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/onesignal/OneSignalRestClient$5;

    invoke-direct {v1, p0, p1}, Lcom/onesignal/OneSignalRestClient$5;-><init>(Lcom/onesignal/OneSignalRestClient$ResponseHandler;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 207
    .local v0, "thread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_3
.end method

.method static get(Ljava/lang/String;Lcom/onesignal/OneSignalRestClient$ResponseHandler;)V
    .registers 4
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "responseHandler"    # Lcom/onesignal/OneSignalRestClient$ResponseHandler;

    .prologue
    .line 70
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/onesignal/OneSignalRestClient$3;

    invoke-direct {v1, p0, p1}, Lcom/onesignal/OneSignalRestClient$3;-><init>(Ljava/lang/String;Lcom/onesignal/OneSignalRestClient$ResponseHandler;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 74
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 75
    return-void
.end method

.method static getSync(Ljava/lang/String;Lcom/onesignal/OneSignalRestClient$ResponseHandler;)V
    .registers 4
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "responseHandler"    # Lcom/onesignal/OneSignalRestClient$ResponseHandler;

    .prologue
    const/4 v1, 0x0

    .line 78
    const v0, 0xea60

    invoke-static {p0, v1, v1, p1, v0}, Lcom/onesignal/OneSignalRestClient;->makeRequest(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/onesignal/OneSignalRestClient$ResponseHandler;I)V

    .line 79
    return-void
.end method

.method private static getThreadTimeout(I)I
    .registers 2
    .param p0, "timeout"    # I

    .prologue
    .line 49
    add-int/lit16 v0, p0, 0x1388

    return v0
.end method

.method private static makeRequest(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/onesignal/OneSignalRestClient$ResponseHandler;I)V
    .registers 14
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "jsonBody"    # Lorg/json/JSONObject;
    .param p3, "responseHandler"    # Lcom/onesignal/OneSignalRestClient$ResponseHandler;
    .param p4, "timeout"    # I

    .prologue
    .line 91
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Thread;

    .line 92
    .local v1, "callbackThread":[Ljava/lang/Thread;
    new-instance v7, Ljava/lang/Thread;

    new-instance v0, Lcom/onesignal/OneSignalRestClient$4;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/onesignal/OneSignalRestClient$4;-><init>([Ljava/lang/Thread;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/onesignal/OneSignalRestClient$ResponseHandler;I)V

    const-string v2, "OS_HTTPConnection"

    invoke-direct {v7, v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 98
    .local v7, "connectionThread":Ljava/lang/Thread;
    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    .line 102
    :try_start_17
    invoke-static {p4}, Lcom/onesignal/OneSignalRestClient;->getThreadTimeout(I)I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {v7, v2, v3}, Ljava/lang/Thread;->join(J)V

    .line 103
    invoke-virtual {v7}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v0

    sget-object v2, Ljava/lang/Thread$State;->TERMINATED:Ljava/lang/Thread$State;

    if-eq v0, v2, :cond_2a

    .line 104
    invoke-virtual {v7}, Ljava/lang/Thread;->interrupt()V

    .line 105
    :cond_2a
    const/4 v0, 0x0

    aget-object v0, v1, v0

    if-eqz v0, :cond_35

    .line 106
    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_35
    .catch Ljava/lang/InterruptedException; {:try_start_17 .. :try_end_35} :catch_36

    .line 110
    :cond_35
    :goto_35
    return-void

    .line 107
    :catch_36
    move-exception v8

    .line 108
    .local v8, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v8}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_35
.end method

.method static post(Ljava/lang/String;Lorg/json/JSONObject;Lcom/onesignal/OneSignalRestClient$ResponseHandler;)V
    .registers 5
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "jsonBody"    # Lorg/json/JSONObject;
    .param p2, "responseHandler"    # Lcom/onesignal/OneSignalRestClient$ResponseHandler;

    .prologue
    .line 62
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/onesignal/OneSignalRestClient$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/onesignal/OneSignalRestClient$2;-><init>(Ljava/lang/String;Lorg/json/JSONObject;Lcom/onesignal/OneSignalRestClient$ResponseHandler;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 66
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 67
    return-void
.end method

.method static postSync(Ljava/lang/String;Lorg/json/JSONObject;Lcom/onesignal/OneSignalRestClient$ResponseHandler;)V
    .registers 5
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "jsonBody"    # Lorg/json/JSONObject;
    .param p2, "responseHandler"    # Lcom/onesignal/OneSignalRestClient$ResponseHandler;

    .prologue
    .line 86
    const-string v0, "POST"

    const v1, 0x1d4c0

    invoke-static {p0, v0, p1, p2, v1}, Lcom/onesignal/OneSignalRestClient;->makeRequest(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/onesignal/OneSignalRestClient$ResponseHandler;I)V

    .line 87
    return-void
.end method

.method static put(Ljava/lang/String;Lorg/json/JSONObject;Lcom/onesignal/OneSignalRestClient$ResponseHandler;)V
    .registers 5
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "jsonBody"    # Lorg/json/JSONObject;
    .param p2, "responseHandler"    # Lcom/onesignal/OneSignalRestClient$ResponseHandler;

    .prologue
    .line 54
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/onesignal/OneSignalRestClient$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/onesignal/OneSignalRestClient$1;-><init>(Ljava/lang/String;Lorg/json/JSONObject;Lcom/onesignal/OneSignalRestClient$ResponseHandler;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 58
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 59
    return-void
.end method

.method static putSync(Ljava/lang/String;Lorg/json/JSONObject;Lcom/onesignal/OneSignalRestClient$ResponseHandler;)V
    .registers 5
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "jsonBody"    # Lorg/json/JSONObject;
    .param p2, "responseHandler"    # Lcom/onesignal/OneSignalRestClient$ResponseHandler;

    .prologue
    .line 82
    const-string v0, "PUT"

    const v1, 0x1d4c0

    invoke-static {p0, v0, p1, p2, v1}, Lcom/onesignal/OneSignalRestClient;->makeRequest(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/onesignal/OneSignalRestClient$ResponseHandler;I)V

    .line 83
    return-void
.end method

.method private static startHTTPConnection(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/onesignal/OneSignalRestClient$ResponseHandler;I)Ljava/lang/Thread;
    .registers 19
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "jsonBody"    # Lorg/json/JSONObject;
    .param p3, "responseHandler"    # Lcom/onesignal/OneSignalRestClient$ResponseHandler;
    .param p4, "timeout"    # I

    .prologue
    .line 113
    const/4 v2, 0x0

    .line 114
    .local v2, "con":Ljava/net/HttpURLConnection;
    const/4 v3, -0x1

    .line 115
    .local v3, "httpResponse":I
    const/4 v5, 0x0

    .line 116
    .local v5, "json":Ljava/lang/String;
    const/4 v1, 0x0

    .line 119
    .local v1, "callbackThread":Ljava/lang/Thread;
    :try_start_4
    sget-object v11, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "OneSignalRestClient: Making request to: https://onesignal.com/api/v1/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 120
    new-instance v11, Ljava/net/URL;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "https://onesignal.com/api/v1/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v11

    move-object v0, v11

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v2, v0

    .line 122
    const/4 v11, 0x0

    invoke-virtual {v2, v11}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 123
    move/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 124
    move/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 126
    if-eqz p2, :cond_50

    .line 127
    const/4 v11, 0x1

    invoke-virtual {v2, v11}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 129
    :cond_50
    if-eqz p1, :cond_60

    .line 130
    const-string v11, "Content-Type"

    const-string v12, "application/json; charset=UTF-8"

    invoke-virtual {v2, v11, v12}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    invoke-virtual {v2, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 132
    const/4 v11, 0x1

    invoke-virtual {v2, v11}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 135
    :cond_60
    if-eqz p2, :cond_99

    .line 136
    invoke-virtual/range {p2 .. p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    .line 137
    .local v9, "strJsonBody":Ljava/lang/String;
    sget-object v11, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "OneSignalRestClient: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " SEND JSON: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 139
    const-string v11, "UTF-8"

    invoke-virtual {v9, v11}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    .line 140
    .local v8, "sendBytes":[B
    array-length v11, v8

    invoke-virtual {v2, v11}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 142
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    .line 143
    .local v6, "outputStream":Ljava/io/OutputStream;
    invoke-virtual {v6, v8}, Ljava/io/OutputStream;->write([B)V

    .line 146
    .end local v6    # "outputStream":Ljava/io/OutputStream;
    .end local v8    # "sendBytes":[B
    .end local v9    # "strJsonBody":Ljava/lang/String;
    :cond_99
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    .line 147
    sget-object v11, Lcom/onesignal/OneSignal$LOG_LEVEL;->VERBOSE:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "OneSignalRestClient: After con.getResponseCode  to: https://onesignal.com/api/v1/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 151
    const/16 v11, 0xc8

    if-ne v3, v11, :cond_11a

    .line 152
    sget-object v11, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "OneSignalRestClient: Successfully finished request to: https://onesignal.com/api/v1/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 154
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 155
    .local v4, "inputStream":Ljava/io/InputStream;
    new-instance v7, Ljava/util/Scanner;

    const-string v11, "UTF-8"

    invoke-direct {v7, v4, v11}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 156
    .local v7, "scanner":Ljava/util/Scanner;
    const-string v11, "\\A"

    invoke-virtual {v7, v11}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/Scanner;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_117

    invoke-virtual {v7}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v5

    .line 157
    :goto_ec
    invoke-virtual {v7}, Ljava/util/Scanner;->close()V

    .line 158
    sget-object v11, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " RECEIVED JSON: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 160
    move-object/from16 v0, p3

    invoke-static {v0, v5}, Lcom/onesignal/OneSignalRestClient;->callResponseHandlerOnSuccess(Lcom/onesignal/OneSignalRestClient$ResponseHandler;Ljava/lang/String;)Ljava/lang/Thread;
    :try_end_110
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_110} :catch_1ae
    .catchall {:try_start_4 .. :try_end_110} :catchall_204

    move-result-object v1

    .line 188
    .end local v7    # "scanner":Ljava/util/Scanner;
    :goto_111
    if-eqz v2, :cond_116

    .line 189
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 192
    .end local v4    # "inputStream":Ljava/io/InputStream;
    :cond_116
    :goto_116
    return-object v1

    .line 156
    .restart local v4    # "inputStream":Ljava/io/InputStream;
    .restart local v7    # "scanner":Ljava/util/Scanner;
    :cond_117
    :try_start_117
    const-string v5, ""

    goto :goto_ec

    .line 163
    .end local v4    # "inputStream":Ljava/io/InputStream;
    .end local v7    # "scanner":Ljava/util/Scanner;
    :cond_11a
    sget-object v11, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "OneSignalRestClient: Failed request to: https://onesignal.com/api/v1/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 164
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v4

    .line 165
    .restart local v4    # "inputStream":Ljava/io/InputStream;
    if-nez v4, :cond_13c

    .line 166
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 168
    :cond_13c
    if-eqz v4, :cond_185

    .line 169
    new-instance v7, Ljava/util/Scanner;

    const-string v11, "UTF-8"

    invoke-direct {v7, v4, v11}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 170
    .restart local v7    # "scanner":Ljava/util/Scanner;
    const-string v11, "\\A"

    invoke-virtual {v7, v11}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/Scanner;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_182

    invoke-virtual {v7}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v5

    .line 171
    :goto_155
    invoke-virtual {v7}, Ljava/util/Scanner;->close()V

    .line 172
    sget-object v11, Lcom/onesignal/OneSignal$LOG_LEVEL;->WARN:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "OneSignalRestClient: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " RECEIVED JSON: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 177
    .end local v7    # "scanner":Ljava/util/Scanner;
    :goto_17a
    const/4 v11, 0x0

    move-object/from16 v0, p3

    invoke-static {v0, v3, v5, v11}, Lcom/onesignal/OneSignalRestClient;->callResponseHandlerOnFailure(Lcom/onesignal/OneSignalRestClient$ResponseHandler;ILjava/lang/String;Ljava/lang/Throwable;)Ljava/lang/Thread;

    move-result-object v1

    goto :goto_111

    .line 170
    .restart local v7    # "scanner":Ljava/util/Scanner;
    :cond_182
    const-string v5, ""

    goto :goto_155

    .line 175
    .end local v7    # "scanner":Ljava/util/Scanner;
    :cond_185
    sget-object v11, Lcom/onesignal/OneSignal$LOG_LEVEL;->WARN:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "OneSignalRestClient: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " HTTP Code: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " No response body!"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V
    :try_end_1ad
    .catch Ljava/lang/Throwable; {:try_start_117 .. :try_end_1ad} :catch_1ae
    .catchall {:try_start_117 .. :try_end_1ad} :catchall_204

    goto :goto_17a

    .line 179
    .end local v4    # "inputStream":Ljava/io/InputStream;
    :catch_1ae
    move-exception v10

    .line 180
    .local v10, "t":Ljava/lang/Throwable;
    :try_start_1af
    instance-of v11, v10, Ljava/net/ConnectException;

    if-nez v11, :cond_1b7

    instance-of v11, v10, Ljava/net/UnknownHostException;

    if-eqz v11, :cond_1e5

    .line 181
    :cond_1b7
    sget-object v11, Lcom/onesignal/OneSignal$LOG_LEVEL;->INFO:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "OneSignalRestClient: Could not send last request, device is offline. Throwable: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 185
    :goto_1d7
    const/4 v11, 0x0

    move-object/from16 v0, p3

    invoke-static {v0, v3, v11, v10}, Lcom/onesignal/OneSignalRestClient;->callResponseHandlerOnFailure(Lcom/onesignal/OneSignalRestClient$ResponseHandler;ILjava/lang/String;Ljava/lang/Throwable;)Ljava/lang/Thread;
    :try_end_1dd
    .catchall {:try_start_1af .. :try_end_1dd} :catchall_204

    move-result-object v1

    .line 188
    if-eqz v2, :cond_116

    .line 189
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_116

    .line 183
    :cond_1e5
    :try_start_1e5
    sget-object v11, Lcom/onesignal/OneSignal$LOG_LEVEL;->WARN:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "OneSignalRestClient: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " Error thrown from network stack. "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v10}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_203
    .catchall {:try_start_1e5 .. :try_end_203} :catchall_204

    goto :goto_1d7

    .line 188
    .end local v10    # "t":Ljava/lang/Throwable;
    :catchall_204
    move-exception v11

    if-eqz v2, :cond_20a

    .line 189
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_20a
    throw v11
.end method
