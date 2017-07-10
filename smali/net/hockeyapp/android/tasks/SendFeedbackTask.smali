.class public Lnet/hockeyapp/android/tasks/SendFeedbackTask;
.super Lnet/hockeyapp/android/tasks/ConnectionTask;
.source "SendFeedbackTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/hockeyapp/android/tasks/ConnectionTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final BUNDLE_FEEDBACK_RESPONSE:Ljava/lang/String; = "feedback_response"

.field public static final BUNDLE_FEEDBACK_STATUS:Ljava/lang/String; = "feedback_status"

.field public static final BUNDLE_REQUEST_TYPE:Ljava/lang/String; = "request_type"

.field private static final FILE_TAG:Ljava/lang/String; = "HockeyApp"

.field private static final TAG:Ljava/lang/String; = "SendFeedbackTask"


# instance fields
.field private mAttachmentUris:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mEmail:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mIsFetchMessages:Z

.field private mLastMessageId:I

.field private mName:Ljava/lang/String;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mShowProgressDialog:Z

.field private mSubject:Ljava/lang/String;

.field private mText:Ljava/lang/String;

.field private mToken:Ljava/lang/String;

.field private mUrlString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Landroid/os/Handler;Z)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "urlString"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "email"    # Ljava/lang/String;
    .param p5, "subject"    # Ljava/lang/String;
    .param p6, "text"    # Ljava/lang/String;
    .param p8, "token"    # Ljava/lang/String;
    .param p9, "handler"    # Landroid/os/Handler;
    .param p10, "isFetchMessages"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/os/Handler;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 78
    .local p7, "attachmentUris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    invoke-direct {p0}, Lnet/hockeyapp/android/tasks/ConnectionTask;-><init>()V

    .line 80
    iput-object p1, p0, Lnet/hockeyapp/android/tasks/SendFeedbackTask;->mContext:Landroid/content/Context;

    .line 81
    iput-object p2, p0, Lnet/hockeyapp/android/tasks/SendFeedbackTask;->mUrlString:Ljava/lang/String;

    .line 82
    iput-object p3, p0, Lnet/hockeyapp/android/tasks/SendFeedbackTask;->mName:Ljava/lang/String;

    .line 83
    iput-object p4, p0, Lnet/hockeyapp/android/tasks/SendFeedbackTask;->mEmail:Ljava/lang/String;

    .line 84
    iput-object p5, p0, Lnet/hockeyapp/android/tasks/SendFeedbackTask;->mSubject:Ljava/lang/String;

    .line 85
    iput-object p6, p0, Lnet/hockeyapp/android/tasks/SendFeedbackTask;->mText:Ljava/lang/String;

    .line 86
    iput-object p7, p0, Lnet/hockeyapp/android/tasks/SendFeedbackTask;->mAttachmentUris:Ljava/util/List;

    .line 87
    iput-object p8, p0, Lnet/hockeyapp/android/tasks/SendFeedbackTask;->mToken:Ljava/lang/String;

    .line 88
    iput-object p9, p0, Lnet/hockeyapp/android/tasks/SendFeedbackTask;->mHandler:Landroid/os/Handler;

    .line 89
    iput-boolean p10, p0, Lnet/hockeyapp/android/tasks/SendFeedbackTask;->mIsFetchMessages:Z

    .line 90
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/hockeyapp/android/tasks/SendFeedbackTask;->mShowProgressDialog:Z

    .line 91
    const/4 v0, -0x1

    iput v0, p0, Lnet/hockeyapp/android/tasks/SendFeedbackTask;->mLastMessageId:I

    .line 93
    if-eqz p1, :cond_22

    .line 94
    invoke-static {p1}, Lnet/hockeyapp/android/Constants;->loadFromContext(Landroid/content/Context;)V

    .line 96
    :cond_22
    return-void
.end method

.method private clearTemporaryFolder(Ljava/util/HashMap;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 154
    .local p1, "result":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "status"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 155
    .local v2, "status":Ljava/lang/String;
    if-eqz v2, :cond_4f

    const-string v4, "2"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4f

    iget-object v4, p0, Lnet/hockeyapp/android/tasks/SendFeedbackTask;->mContext:Landroid/content/Context;

    if-eqz v4, :cond_4f

    .line 156
    new-instance v1, Ljava/io/File;

    iget-object v4, p0, Lnet/hockeyapp/android/tasks/SendFeedbackTask;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v4

    const-string v5, "HockeyApp"

    invoke-direct {v1, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 157
    .local v1, "folder":Ljava/io/File;
    if-eqz v1, :cond_4f

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_4f

    .line 158
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    array-length v6, v5

    const/4 v4, 0x0

    :goto_31
    if-ge v4, v6, :cond_4f

    aget-object v0, v5, v4

    .line 159
    .local v0, "file":Ljava/io/File;
    if-eqz v0, :cond_4c

    .line 160
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 161
    .local v3, "success":Ljava/lang/Boolean;
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_4c

    .line 162
    const-string v7, "SendFeedbackTask"

    const-string v8, "Error deleting file from temporary folder"

    invoke-static {v7, v8}, Lnet/hockeyapp/android/utils/HockeyLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    .end local v3    # "success":Ljava/lang/Boolean;
    :cond_4c
    add-int/lit8 v4, v4, 0x1

    goto :goto_31

    .line 168
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "folder":Ljava/io/File;
    :cond_4f
    return-void
.end method

.method private doGet()Ljava/util/HashMap;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 302
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 303
    .local v2, "sb":Ljava/lang/StringBuilder;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lnet/hockeyapp/android/tasks/SendFeedbackTask;->mUrlString:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lnet/hockeyapp/android/tasks/SendFeedbackTask;->mToken:Ljava/lang/String;

    invoke-static {v5}, Lnet/hockeyapp/android/utils/Util;->encodeParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    iget v4, p0, Lnet/hockeyapp/android/tasks/SendFeedbackTask;->mLastMessageId:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_3e

    .line 306
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "?last_message_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lnet/hockeyapp/android/tasks/SendFeedbackTask;->mLastMessageId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    :cond_3e
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 311
    .local v1, "result":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 314
    .local v3, "urlConnection":Ljava/net/HttpURLConnection;
    :try_start_44
    new-instance v4, Lnet/hockeyapp/android/utils/HttpURLConnectionBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lnet/hockeyapp/android/utils/HttpURLConnectionBuilder;-><init>(Ljava/lang/String;)V

    .line 315
    invoke-virtual {v4}, Lnet/hockeyapp/android/utils/HttpURLConnectionBuilder;->build()Ljava/net/HttpURLConnection;

    move-result-object v3

    .line 317
    const-string v4, "type"

    const-string v5, "fetch"

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->connect()V

    .line 321
    const-string v4, "status"

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    const-string v4, "response"

    invoke-static {v3}, Lnet/hockeyapp/android/tasks/SendFeedbackTask;->getStringFromConnection(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_71
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_71} :catch_77
    .catchall {:try_start_44 .. :try_end_71} :catchall_81

    .line 326
    if-eqz v3, :cond_76

    .line 327
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 331
    :cond_76
    :goto_76
    return-object v1

    .line 323
    :catch_77
    move-exception v0

    .line 324
    .local v0, "e":Ljava/io/IOException;
    :try_start_78
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7b
    .catchall {:try_start_78 .. :try_end_7b} :catchall_81

    .line 326
    if-eqz v3, :cond_76

    .line 327
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_76

    .line 326
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_81
    move-exception v4

    if-eqz v3, :cond_87

    .line 327
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_87
    throw v4
.end method

.method private doPostPut()Ljava/util/HashMap;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 205
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 206
    .local v2, "result":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "type"

    const-string v5, "send"

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    const/4 v3, 0x0

    .line 210
    .local v3, "urlConnection":Ljava/net/HttpURLConnection;
    :try_start_d
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 211
    .local v1, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "name"

    iget-object v5, p0, Lnet/hockeyapp/android/tasks/SendFeedbackTask;->mName:Ljava/lang/String;

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    const-string v4, "email"

    iget-object v5, p0, Lnet/hockeyapp/android/tasks/SendFeedbackTask;->mEmail:Ljava/lang/String;

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    const-string v4, "subject"

    iget-object v5, p0, Lnet/hockeyapp/android/tasks/SendFeedbackTask;->mSubject:Ljava/lang/String;

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    const-string v4, "text"

    iget-object v5, p0, Lnet/hockeyapp/android/tasks/SendFeedbackTask;->mText:Ljava/lang/String;

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    const-string v4, "bundle_identifier"

    sget-object v5, Lnet/hockeyapp/android/Constants;->APP_PACKAGE:Ljava/lang/String;

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    const-string v4, "bundle_short_version"

    sget-object v5, Lnet/hockeyapp/android/Constants;->APP_VERSION_NAME:Ljava/lang/String;

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    const-string v4, "bundle_version"

    sget-object v5, Lnet/hockeyapp/android/Constants;->APP_VERSION:Ljava/lang/String;

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    const-string v4, "os_version"

    sget-object v5, Lnet/hockeyapp/android/Constants;->ANDROID_VERSION:Ljava/lang/String;

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    const-string v4, "oem"

    sget-object v5, Lnet/hockeyapp/android/Constants;->PHONE_MANUFACTURER:Ljava/lang/String;

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    const-string v4, "model"

    sget-object v5, Lnet/hockeyapp/android/Constants;->PHONE_MODEL:Ljava/lang/String;

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    const-string v4, "sdk_version"

    const-string v5, "4.1.2"

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    iget-object v4, p0, Lnet/hockeyapp/android/tasks/SendFeedbackTask;->mToken:Ljava/lang/String;

    if-eqz v4, :cond_80

    .line 224
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lnet/hockeyapp/android/tasks/SendFeedbackTask;->mUrlString:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lnet/hockeyapp/android/tasks/SendFeedbackTask;->mToken:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lnet/hockeyapp/android/tasks/SendFeedbackTask;->mUrlString:Ljava/lang/String;

    .line 227
    :cond_80
    new-instance v5, Lnet/hockeyapp/android/utils/HttpURLConnectionBuilder;

    iget-object v4, p0, Lnet/hockeyapp/android/tasks/SendFeedbackTask;->mUrlString:Ljava/lang/String;

    invoke-direct {v5, v4}, Lnet/hockeyapp/android/utils/HttpURLConnectionBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lnet/hockeyapp/android/tasks/SendFeedbackTask;->mToken:Ljava/lang/String;

    if-eqz v4, :cond_b8

    const-string v4, "PUT"

    .line 228
    :goto_8d
    invoke-virtual {v5, v4}, Lnet/hockeyapp/android/utils/HttpURLConnectionBuilder;->setRequestMethod(Ljava/lang/String;)Lnet/hockeyapp/android/utils/HttpURLConnectionBuilder;

    move-result-object v4

    .line 229
    invoke-virtual {v4, v1}, Lnet/hockeyapp/android/utils/HttpURLConnectionBuilder;->writeFormFields(Ljava/util/Map;)Lnet/hockeyapp/android/utils/HttpURLConnectionBuilder;

    move-result-object v4

    .line 230
    invoke-virtual {v4}, Lnet/hockeyapp/android/utils/HttpURLConnectionBuilder;->build()Ljava/net/HttpURLConnection;

    move-result-object v3

    .line 232
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->connect()V

    .line 234
    const-string v4, "status"

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    const-string v4, "response"

    invoke-static {v3}, Lnet/hockeyapp/android/tasks/SendFeedbackTask;->getStringFromConnection(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b2
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_b2} :catch_bb
    .catchall {:try_start_d .. :try_end_b2} :catchall_c5

    .line 239
    if-eqz v3, :cond_b7

    .line 240
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 244
    .end local v1    # "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_b7
    :goto_b7
    return-object v2

    .line 227
    .restart local v1    # "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_b8
    :try_start_b8
    const-string v4, "POST"
    :try_end_ba
    .catch Ljava/io/IOException; {:try_start_b8 .. :try_end_ba} :catch_bb
    .catchall {:try_start_b8 .. :try_end_ba} :catchall_c5

    goto :goto_8d

    .line 236
    .end local v1    # "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_bb
    move-exception v0

    .line 237
    .local v0, "e":Ljava/io/IOException;
    :try_start_bc
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_bf
    .catchall {:try_start_bc .. :try_end_bf} :catchall_c5

    .line 239
    if-eqz v3, :cond_b7

    .line 240
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_b7

    .line 239
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_c5
    move-exception v4

    if-eqz v3, :cond_cb

    .line 240
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_cb
    throw v4
.end method

.method private doPostPutWithAttachments()Ljava/util/HashMap;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 253
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 254
    .local v2, "result":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "type"

    const-string v5, "send"

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    const/4 v3, 0x0

    .line 258
    .local v3, "urlConnection":Ljava/net/HttpURLConnection;
    :try_start_d
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 259
    .local v1, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "name"

    iget-object v5, p0, Lnet/hockeyapp/android/tasks/SendFeedbackTask;->mName:Ljava/lang/String;

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    const-string v4, "email"

    iget-object v5, p0, Lnet/hockeyapp/android/tasks/SendFeedbackTask;->mEmail:Ljava/lang/String;

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    const-string v4, "subject"

    iget-object v5, p0, Lnet/hockeyapp/android/tasks/SendFeedbackTask;->mSubject:Ljava/lang/String;

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    const-string v4, "text"

    iget-object v5, p0, Lnet/hockeyapp/android/tasks/SendFeedbackTask;->mText:Ljava/lang/String;

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    const-string v4, "bundle_identifier"

    sget-object v5, Lnet/hockeyapp/android/Constants;->APP_PACKAGE:Ljava/lang/String;

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    const-string v4, "bundle_short_version"

    sget-object v5, Lnet/hockeyapp/android/Constants;->APP_VERSION_NAME:Ljava/lang/String;

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    const-string v4, "bundle_version"

    sget-object v5, Lnet/hockeyapp/android/Constants;->APP_VERSION:Ljava/lang/String;

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    const-string v4, "os_version"

    sget-object v5, Lnet/hockeyapp/android/Constants;->ANDROID_VERSION:Ljava/lang/String;

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    const-string v4, "oem"

    sget-object v5, Lnet/hockeyapp/android/Constants;->PHONE_MANUFACTURER:Ljava/lang/String;

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    const-string v4, "model"

    sget-object v5, Lnet/hockeyapp/android/Constants;->PHONE_MODEL:Ljava/lang/String;

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    const-string v4, "sdk_version"

    const-string v5, "4.1.2"

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    iget-object v4, p0, Lnet/hockeyapp/android/tasks/SendFeedbackTask;->mToken:Ljava/lang/String;

    if-eqz v4, :cond_80

    .line 272
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lnet/hockeyapp/android/tasks/SendFeedbackTask;->mUrlString:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lnet/hockeyapp/android/tasks/SendFeedbackTask;->mToken:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lnet/hockeyapp/android/tasks/SendFeedbackTask;->mUrlString:Ljava/lang/String;

    .line 275
    :cond_80
    new-instance v5, Lnet/hockeyapp/android/utils/HttpURLConnectionBuilder;

    iget-object v4, p0, Lnet/hockeyapp/android/tasks/SendFeedbackTask;->mUrlString:Ljava/lang/String;

    invoke-direct {v5, v4}, Lnet/hockeyapp/android/utils/HttpURLConnectionBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lnet/hockeyapp/android/tasks/SendFeedbackTask;->mToken:Ljava/lang/String;

    if-eqz v4, :cond_bc

    const-string v4, "PUT"

    .line 276
    :goto_8d
    invoke-virtual {v5, v4}, Lnet/hockeyapp/android/utils/HttpURLConnectionBuilder;->setRequestMethod(Ljava/lang/String;)Lnet/hockeyapp/android/utils/HttpURLConnectionBuilder;

    move-result-object v4

    iget-object v5, p0, Lnet/hockeyapp/android/tasks/SendFeedbackTask;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lnet/hockeyapp/android/tasks/SendFeedbackTask;->mAttachmentUris:Ljava/util/List;

    .line 277
    invoke-virtual {v4, v1, v5, v6}, Lnet/hockeyapp/android/utils/HttpURLConnectionBuilder;->writeMultipartData(Ljava/util/Map;Landroid/content/Context;Ljava/util/List;)Lnet/hockeyapp/android/utils/HttpURLConnectionBuilder;

    move-result-object v4

    .line 278
    invoke-virtual {v4}, Lnet/hockeyapp/android/utils/HttpURLConnectionBuilder;->build()Ljava/net/HttpURLConnection;

    move-result-object v3

    .line 280
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->connect()V

    .line 282
    const-string v4, "status"

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    const-string v4, "response"

    invoke-static {v3}, Lnet/hockeyapp/android/tasks/SendFeedbackTask;->getStringFromConnection(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b6
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_b6} :catch_bf
    .catchall {:try_start_d .. :try_end_b6} :catchall_c9

    .line 288
    if-eqz v3, :cond_bb

    .line 289
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 293
    .end local v1    # "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_bb
    :goto_bb
    return-object v2

    .line 275
    .restart local v1    # "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_bc
    :try_start_bc
    const-string v4, "POST"
    :try_end_be
    .catch Ljava/io/IOException; {:try_start_bc .. :try_end_be} :catch_bf
    .catchall {:try_start_bc .. :try_end_be} :catchall_c9

    goto :goto_8d

    .line 285
    .end local v1    # "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_bf
    move-exception v0

    .line 286
    .local v0, "e":Ljava/io/IOException;
    :try_start_c0
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_c3
    .catchall {:try_start_c0 .. :try_end_c3} :catchall_c9

    .line 288
    if-eqz v3, :cond_bb

    .line 289
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_bb

    .line 288
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_c9
    move-exception v4

    if-eqz v3, :cond_cf

    .line 289
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_cf
    throw v4
.end method


# virtual methods
.method public attach(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 107
    iput-object p1, p0, Lnet/hockeyapp/android/tasks/SendFeedbackTask;->mContext:Landroid/content/Context;

    .line 108
    return-void
.end method

.method public detach()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 111
    iput-object v0, p0, Lnet/hockeyapp/android/tasks/SendFeedbackTask;->mContext:Landroid/content/Context;

    .line 112
    iput-object v0, p0, Lnet/hockeyapp/android/tasks/SendFeedbackTask;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 113
    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 31
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lnet/hockeyapp/android/tasks/SendFeedbackTask;->doInBackground([Ljava/lang/Void;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/HashMap;
    .registers 4
    .param p1, "args"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 129
    iget-boolean v1, p0, Lnet/hockeyapp/android/tasks/SendFeedbackTask;->mIsFetchMessages:Z

    if-eqz v1, :cond_d

    iget-object v1, p0, Lnet/hockeyapp/android/tasks/SendFeedbackTask;->mToken:Ljava/lang/String;

    if-eqz v1, :cond_d

    .line 131
    invoke-direct {p0}, Lnet/hockeyapp/android/tasks/SendFeedbackTask;->doGet()Ljava/util/HashMap;

    move-result-object v0

    .line 148
    :cond_c
    :goto_c
    return-object v0

    .line 137
    :cond_d
    iget-boolean v1, p0, Lnet/hockeyapp/android/tasks/SendFeedbackTask;->mIsFetchMessages:Z

    if-nez v1, :cond_28

    .line 138
    iget-object v1, p0, Lnet/hockeyapp/android/tasks/SendFeedbackTask;->mAttachmentUris:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 139
    invoke-direct {p0}, Lnet/hockeyapp/android/tasks/SendFeedbackTask;->doPostPut()Ljava/util/HashMap;

    move-result-object v0

    goto :goto_c

    .line 141
    :cond_1e
    invoke-direct {p0}, Lnet/hockeyapp/android/tasks/SendFeedbackTask;->doPostPutWithAttachments()Ljava/util/HashMap;

    move-result-object v0

    .line 142
    .local v0, "result":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_c

    .line 143
    invoke-direct {p0, v0}, Lnet/hockeyapp/android/tasks/SendFeedbackTask;->clearTemporaryFolder(Ljava/util/HashMap;)V

    goto :goto_c

    .line 148
    .end local v0    # "result":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_28
    const/4 v0, 0x0

    goto :goto_c
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 31
    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Lnet/hockeyapp/android/tasks/SendFeedbackTask;->onPostExecute(Ljava/util/HashMap;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/HashMap;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 172
    .local p1, "result":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v3, p0, Lnet/hockeyapp/android/tasks/SendFeedbackTask;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v3, :cond_9

    .line 174
    :try_start_4
    iget-object v3, p0, Lnet/hockeyapp/android/tasks/SendFeedbackTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_9} :catch_49

    .line 181
    :cond_9
    :goto_9
    iget-object v3, p0, Lnet/hockeyapp/android/tasks/SendFeedbackTask;->mHandler:Landroid/os/Handler;

    if-eqz v3, :cond_48

    .line 182
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 183
    .local v2, "msg":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 185
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz p1, :cond_4e

    .line 186
    const-string v4, "request_type"

    const-string v3, "type"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    const-string v4, "feedback_response"

    const-string v3, "response"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    const-string v4, "feedback_status"

    const-string v3, "status"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    :goto_40
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 195
    iget-object v3, p0, Lnet/hockeyapp/android/tasks/SendFeedbackTask;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 197
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v2    # "msg":Landroid/os/Message;
    :cond_48
    return-void

    .line 175
    :catch_49
    move-exception v1

    .line 176
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_9

    .line 190
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "bundle":Landroid/os/Bundle;
    .restart local v2    # "msg":Landroid/os/Message;
    :cond_4e
    const-string v3, "request_type"

    const-string v4, "unknown"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_40
.end method

.method protected onPreExecute()V
    .registers 6

    .prologue
    .line 117
    iget-object v1, p0, Lnet/hockeyapp/android/tasks/SendFeedbackTask;->mContext:Landroid/content/Context;

    sget v2, Lnet/hockeyapp/android/R$string;->hockeyapp_feedback_sending_feedback_text:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 118
    .local v0, "loadingMessage":Ljava/lang/String;
    iget-boolean v1, p0, Lnet/hockeyapp/android/tasks/SendFeedbackTask;->mIsFetchMessages:Z

    if-eqz v1, :cond_14

    .line 119
    iget-object v1, p0, Lnet/hockeyapp/android/tasks/SendFeedbackTask;->mContext:Landroid/content/Context;

    sget v2, Lnet/hockeyapp/android/R$string;->hockeyapp_feedback_fetching_feedback_text:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 122
    :cond_14
    iget-object v1, p0, Lnet/hockeyapp/android/tasks/SendFeedbackTask;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_20

    iget-object v1, p0, Lnet/hockeyapp/android/tasks/SendFeedbackTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_30

    :cond_20
    iget-boolean v1, p0, Lnet/hockeyapp/android/tasks/SendFeedbackTask;->mShowProgressDialog:Z

    if-eqz v1, :cond_30

    .line 123
    iget-object v1, p0, Lnet/hockeyapp/android/tasks/SendFeedbackTask;->mContext:Landroid/content/Context;

    const-string v2, ""

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v1, v2, v0, v3, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v1

    iput-object v1, p0, Lnet/hockeyapp/android/tasks/SendFeedbackTask;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 125
    :cond_30
    return-void
.end method

.method public setLastMessageId(I)V
    .registers 2
    .param p1, "lastMessageId"    # I

    .prologue
    .line 103
    iput p1, p0, Lnet/hockeyapp/android/tasks/SendFeedbackTask;->mLastMessageId:I

    .line 104
    return-void
.end method

.method public setShowProgressDialog(Z)V
    .registers 2
    .param p1, "showProgressDialog"    # Z

    .prologue
    .line 99
    iput-boolean p1, p0, Lnet/hockeyapp/android/tasks/SendFeedbackTask;->mShowProgressDialog:Z

    .line 100
    return-void
.end method
