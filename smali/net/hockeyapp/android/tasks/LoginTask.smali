.class public Lnet/hockeyapp/android/tasks/LoginTask;
.super Lnet/hockeyapp/android/tasks/ConnectionTask;
.source "LoginTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/hockeyapp/android/tasks/ConnectionTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field public static final BUNDLE_SUCCESS:Ljava/lang/String; = "success"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private final mMode:I

.field private final mParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mShowProgressDialog:Z

.field private final mUrlString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;ILjava/util/Map;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "urlString"    # Ljava/lang/String;
    .param p4, "mode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Handler;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 54
    .local p5, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Lnet/hockeyapp/android/tasks/ConnectionTask;-><init>()V

    .line 55
    iput-object p1, p0, Lnet/hockeyapp/android/tasks/LoginTask;->mContext:Landroid/content/Context;

    .line 56
    iput-object p2, p0, Lnet/hockeyapp/android/tasks/LoginTask;->mHandler:Landroid/os/Handler;

    .line 57
    iput-object p3, p0, Lnet/hockeyapp/android/tasks/LoginTask;->mUrlString:Ljava/lang/String;

    .line 58
    iput p4, p0, Lnet/hockeyapp/android/tasks/LoginTask;->mMode:I

    .line 59
    iput-object p5, p0, Lnet/hockeyapp/android/tasks/LoginTask;->mParams:Ljava/util/Map;

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/hockeyapp/android/tasks/LoginTask;->mShowProgressDialog:Z

    .line 62
    if-eqz p1, :cond_15

    .line 63
    invoke-static {p1}, Lnet/hockeyapp/android/Constants;->loadFromContext(Landroid/content/Context;)V

    .line 65
    :cond_15
    return-void
.end method

.method private handleResponse(Ljava/lang/String;)Z
    .registers 12
    .param p1, "responseStr"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 165
    iget-object v8, p0, Lnet/hockeyapp/android/tasks/LoginTask;->mContext:Landroid/content/Context;

    const-string v9, "net.hockeyapp.android.login"

    invoke-virtual {v8, v9, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 168
    .local v3, "prefs":Landroid/content/SharedPreferences;
    :try_start_a
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 169
    .local v4, "response":Lorg/json/JSONObject;
    const-string v8, "status"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 171
    .local v5, "status":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1c

    .line 213
    .end local v4    # "response":Lorg/json/JSONObject;
    .end local v5    # "status":Ljava/lang/String;
    :cond_1b
    :goto_1b
    return v6

    .line 175
    .restart local v4    # "response":Lorg/json/JSONObject;
    .restart local v5    # "status":Ljava/lang/String;
    :cond_1c
    iget v8, p0, Lnet/hockeyapp/android/tasks/LoginTask;->mMode:I

    if-ne v8, v7, :cond_43

    .line 176
    const-string v8, "identified"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1b

    .line 177
    const-string v8, "iuid"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 178
    .local v2, "iuid":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1b

    .line 180
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    const-string v9, "iuid"

    .line 181
    invoke-interface {v8, v9, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 182
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    move v6, v7

    .line 183
    goto :goto_1b

    .line 186
    .end local v2    # "iuid":Ljava/lang/String;
    :cond_43
    iget v8, p0, Lnet/hockeyapp/android/tasks/LoginTask;->mMode:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_6b

    .line 187
    const-string v8, "authorized"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1b

    .line 188
    const-string v8, "auid"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 190
    .local v0, "auid":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1b

    .line 191
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    const-string v9, "auid"

    .line 192
    invoke-interface {v8, v9, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 193
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    move v6, v7

    .line 194
    goto :goto_1b

    .line 197
    .end local v0    # "auid":Ljava/lang/String;
    :cond_6b
    iget v8, p0, Lnet/hockeyapp/android/tasks/LoginTask;->mMode:I

    const/4 v9, 0x3

    if-ne v8, v9, :cond_93

    .line 198
    const-string v8, "validated"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7a

    move v6, v7

    .line 199
    goto :goto_1b

    .line 201
    :cond_7a
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const-string v8, "iuid"

    .line 202
    invoke-interface {v7, v8}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const-string v8, "auid"

    .line 203
    invoke-interface {v7, v8}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    .line 204
    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_8d
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_8d} :catch_8e

    goto :goto_1b

    .line 211
    .end local v4    # "response":Lorg/json/JSONObject;
    .end local v5    # "status":Ljava/lang/String;
    :catch_8e
    move-exception v1

    .line 212
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1b

    .line 207
    .end local v1    # "e":Lorg/json/JSONException;
    .restart local v4    # "response":Lorg/json/JSONObject;
    .restart local v5    # "status":Ljava/lang/String;
    :cond_93
    :try_start_93
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Login mode "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lnet/hockeyapp/android/tasks/LoginTask;->mMode:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " not supported."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_b4
    .catch Lorg/json/JSONException; {:try_start_93 .. :try_end_b4} :catch_8e
.end method

.method private makeRequest(ILjava/util/Map;)Ljava/net/HttpURLConnection;
    .registers 9
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/net/HttpURLConnection;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 139
    .local p2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v3, 0x1

    if-ne p1, v3, :cond_19

    .line 141
    new-instance v3, Lnet/hockeyapp/android/utils/HttpURLConnectionBuilder;

    iget-object v4, p0, Lnet/hockeyapp/android/tasks/LoginTask;->mUrlString:Ljava/lang/String;

    invoke-direct {v3, v4}, Lnet/hockeyapp/android/utils/HttpURLConnectionBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "POST"

    .line 142
    invoke-virtual {v3, v4}, Lnet/hockeyapp/android/utils/HttpURLConnectionBuilder;->setRequestMethod(Ljava/lang/String;)Lnet/hockeyapp/android/utils/HttpURLConnectionBuilder;

    move-result-object v3

    .line 143
    invoke-virtual {v3, p2}, Lnet/hockeyapp/android/utils/HttpURLConnectionBuilder;->writeFormFields(Ljava/util/Map;)Lnet/hockeyapp/android/utils/HttpURLConnectionBuilder;

    move-result-object v3

    .line 144
    invoke-virtual {v3}, Lnet/hockeyapp/android/utils/HttpURLConnectionBuilder;->build()Ljava/net/HttpURLConnection;

    move-result-object v3

    .line 157
    :goto_18
    return-object v3

    .line 145
    :cond_19
    const/4 v3, 0x2

    if-ne p1, v3, :cond_42

    .line 147
    new-instance v3, Lnet/hockeyapp/android/utils/HttpURLConnectionBuilder;

    iget-object v4, p0, Lnet/hockeyapp/android/tasks/LoginTask;->mUrlString:Ljava/lang/String;

    invoke-direct {v3, v4}, Lnet/hockeyapp/android/utils/HttpURLConnectionBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "POST"

    .line 148
    invoke-virtual {v3, v4}, Lnet/hockeyapp/android/utils/HttpURLConnectionBuilder;->setRequestMethod(Ljava/lang/String;)Lnet/hockeyapp/android/utils/HttpURLConnectionBuilder;

    move-result-object v5

    const-string v3, "email"

    .line 149
    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "password"

    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v3, v4}, Lnet/hockeyapp/android/utils/HttpURLConnectionBuilder;->setBasicAuthorization(Ljava/lang/String;Ljava/lang/String;)Lnet/hockeyapp/android/utils/HttpURLConnectionBuilder;

    move-result-object v3

    .line 150
    invoke-virtual {v3}, Lnet/hockeyapp/android/utils/HttpURLConnectionBuilder;->build()Ljava/net/HttpURLConnection;

    move-result-object v3

    goto :goto_18

    .line 151
    :cond_42
    const/4 v3, 0x3

    if-ne p1, v3, :cond_82

    .line 153
    const-string v3, "type"

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 154
    .local v2, "type":Ljava/lang/String;
    const-string v3, "id"

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 155
    .local v0, "id":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lnet/hockeyapp/android/tasks/LoginTask;->mUrlString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 157
    .local v1, "paramUrl":Ljava/lang/String;
    new-instance v3, Lnet/hockeyapp/android/utils/HttpURLConnectionBuilder;

    invoke-direct {v3, v1}, Lnet/hockeyapp/android/utils/HttpURLConnectionBuilder;-><init>(Ljava/lang/String;)V

    .line 158
    invoke-virtual {v3}, Lnet/hockeyapp/android/utils/HttpURLConnectionBuilder;->build()Ljava/net/HttpURLConnection;

    move-result-object v3

    goto :goto_18

    .line 160
    .end local v0    # "id":Ljava/lang/String;
    .end local v1    # "paramUrl":Ljava/lang/String;
    .end local v2    # "type":Ljava/lang/String;
    :cond_82
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Login mode "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " not supported."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method


# virtual methods
.method public attach(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 72
    iput-object p1, p0, Lnet/hockeyapp/android/tasks/LoginTask;->mContext:Landroid/content/Context;

    .line 73
    iput-object p2, p0, Lnet/hockeyapp/android/tasks/LoginTask;->mHandler:Landroid/os/Handler;

    .line 74
    return-void
.end method

.method public detach()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 77
    iput-object v0, p0, Lnet/hockeyapp/android/tasks/LoginTask;->mContext:Landroid/content/Context;

    .line 78
    iput-object v0, p0, Lnet/hockeyapp/android/tasks/LoginTask;->mHandler:Landroid/os/Handler;

    .line 79
    iput-object v0, p0, Lnet/hockeyapp/android/tasks/LoginTask;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 80
    return-void
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .registers 7
    .param p1, "args"    # [Ljava/lang/Void;

    .prologue
    .line 91
    const/4 v0, 0x0

    .line 94
    .local v0, "connection":Ljava/net/HttpURLConnection;
    :try_start_1
    iget v3, p0, Lnet/hockeyapp/android/tasks/LoginTask;->mMode:I

    iget-object v4, p0, Lnet/hockeyapp/android/tasks/LoginTask;->mParams:Ljava/util/Map;

    invoke-direct {p0, v3, v4}, Lnet/hockeyapp/android/tasks/LoginTask;->makeRequest(ILjava/util/Map;)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 95
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 97
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    const/16 v4, 0xc8

    if-ne v3, v4, :cond_2c

    .line 98
    invoke-static {v0}, Lnet/hockeyapp/android/tasks/LoginTask;->getStringFromConnection(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object v2

    .line 100
    .local v2, "responseStr":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2c

    .line 101
    invoke-direct {p0, v2}, Lnet/hockeyapp/android/tasks/LoginTask;->handleResponse(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_25
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_25} :catch_37
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_25} :catch_41
    .catchall {:try_start_1 .. :try_end_25} :catchall_4b

    move-result-object v3

    .line 109
    if-eqz v0, :cond_2b

    .line 110
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 114
    .end local v2    # "responseStr":Ljava/lang/String;
    :cond_2b
    :goto_2b
    return-object v3

    .line 109
    :cond_2c
    if-eqz v0, :cond_31

    .line 110
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 114
    :cond_31
    :goto_31
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_2b

    .line 104
    :catch_37
    move-exception v1

    .line 105
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    :try_start_38
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V
    :try_end_3b
    .catchall {:try_start_38 .. :try_end_3b} :catchall_4b

    .line 109
    if-eqz v0, :cond_31

    .line 110
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_31

    .line 106
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_41
    move-exception v1

    .line 107
    .local v1, "e":Ljava/io/IOException;
    :try_start_42
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_45
    .catchall {:try_start_42 .. :try_end_45} :catchall_4b

    .line 109
    if-eqz v0, :cond_31

    .line 110
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_31

    .line 109
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_4b
    move-exception v3

    if-eqz v0, :cond_51

    .line 110
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_51
    throw v3
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 28
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lnet/hockeyapp/android/tasks/LoginTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .registers 7
    .param p1, "success"    # Ljava/lang/Boolean;

    .prologue
    .line 119
    iget-object v3, p0, Lnet/hockeyapp/android/tasks/LoginTask;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v3, :cond_9

    .line 121
    :try_start_4
    iget-object v3, p0, Lnet/hockeyapp/android/tasks/LoginTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_9} :catch_29

    .line 128
    :cond_9
    :goto_9
    iget-object v3, p0, Lnet/hockeyapp/android/tasks/LoginTask;->mHandler:Landroid/os/Handler;

    if-eqz v3, :cond_28

    .line 129
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 130
    .local v2, "msg":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 131
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "success"

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 133
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 134
    iget-object v3, p0, Lnet/hockeyapp/android/tasks/LoginTask;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 136
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v2    # "msg":Landroid/os/Message;
    :cond_28
    return-void

    .line 122
    :catch_29
    move-exception v1

    .line 123
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_9
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 28
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lnet/hockeyapp/android/tasks/LoginTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .registers 6

    .prologue
    .line 84
    iget-object v0, p0, Lnet/hockeyapp/android/tasks/LoginTask;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lnet/hockeyapp/android/tasks/LoginTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1e

    :cond_c
    iget-boolean v0, p0, Lnet/hockeyapp/android/tasks/LoginTask;->mShowProgressDialog:Z

    if-eqz v0, :cond_1e

    .line 85
    iget-object v0, p0, Lnet/hockeyapp/android/tasks/LoginTask;->mContext:Landroid/content/Context;

    const-string v1, ""

    const-string v2, "Please wait..."

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lnet/hockeyapp/android/tasks/LoginTask;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 87
    :cond_1e
    return-void
.end method

.method public setShowProgressDialog(Z)V
    .registers 2
    .param p1, "showProgressDialog"    # Z

    .prologue
    .line 68
    iput-boolean p1, p0, Lnet/hockeyapp/android/tasks/LoginTask;->mShowProgressDialog:Z

    .line 69
    return-void
.end method
