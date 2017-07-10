.class public Lorg/telegram/ui/Telehgram/MyPushListener;
.super Lco/ronash/pushe/PusheListenerService;
.source "MyPushListener.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Lco/ronash/pushe/PusheListenerService;-><init>()V

    return-void
.end method


# virtual methods
.method public onMessageReceived(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .registers 16
    .param p1, "message"    # Lorg/json/JSONObject;
    .param p2, "contentt"    # Lorg/json/JSONObject;

    .prologue
    .line 33
    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v10

    if-nez v10, :cond_7

    .line 133
    :cond_6
    :goto_6
    return-void

    .line 37
    :cond_7
    :try_start_7
    const-string v10, "type"

    invoke-virtual {p1, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "dialog"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2e

    .line 41
    const-string v10, "url"

    invoke-virtual {p1, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 42
    .local v9, "url":Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    const-string v10, "android.intent.action.VIEW"

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    invoke-direct {v0, v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 43
    .local v0, "browserIntent":Landroid/content/Intent;
    const/high16 v10, 0x10000000

    invoke-virtual {v0, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 44
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Telehgram/MyPushListener;->startActivity(Landroid/content/Intent;)V

    .line 56
    .end local v0    # "browserIntent":Landroid/content/Intent;
    .end local v9    # "url":Ljava/lang/String;
    :cond_2e
    const-string v10, "type"

    invoke-virtual {p1, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "fulldialog"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8d

    .line 57
    const-string v10, "image"

    invoke-virtual {p1, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 58
    .local v6, "image":Ljava/lang/String;
    const-string v10, "title"

    invoke-virtual {p1, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 59
    .local v8, "title":Ljava/lang/String;
    const-string v10, "content"

    invoke-virtual {p1, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 60
    .local v2, "content":Ljava/lang/String;
    const-string v10, "url"

    invoke-virtual {p1, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 61
    .restart local v9    # "url":Ljava/lang/String;
    const-string v10, "button"

    invoke-virtual {p1, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 63
    .local v1, "button":Ljava/lang/String;
    new-instance v5, Landroid/content/Intent;

    const-class v10, Lorg/telegram/ui/Telehgram/DialogActivity;

    invoke-direct {v5, p0, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 66
    .local v5, "i":Landroid/content/Intent;
    const-string v10, "image"

    invoke-virtual {v5, v10, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 67
    const-string v10, "title"

    invoke-virtual {v5, v10, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 68
    const-string v10, "content"

    invoke-virtual {v5, v10, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 69
    const-string v10, "url"

    invoke-virtual {v5, v10, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 71
    const-string v10, "button"

    invoke-virtual {v5, v10, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 73
    const/high16 v10, 0x10000000

    invoke-virtual {v5, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 74
    invoke-virtual {p0, v5}, Lorg/telegram/ui/Telehgram/MyPushListener;->startActivity(Landroid/content/Intent;)V
    :try_end_82
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_82} :catch_83

    goto :goto_6

    .line 130
    .end local v1    # "button":Ljava/lang/String;
    .end local v2    # "content":Ljava/lang/String;
    .end local v5    # "i":Landroid/content/Intent;
    .end local v6    # "image":Ljava/lang/String;
    .end local v8    # "title":Ljava/lang/String;
    .end local v9    # "url":Ljava/lang/String;
    :catch_83
    move-exception v4

    .line 131
    .local v4, "e":Lorg/json/JSONException;
    const-string v10, ""

    const-string v11, "Exception in parsing json"

    invoke-static {v10, v11, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_6

    .line 76
    .end local v4    # "e":Lorg/json/JSONException;
    :cond_8d
    :try_start_8d
    const-string v10, "type"

    invoke-virtual {p1, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "join"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 77
    const-string v10, "channel"

    invoke-virtual {p1, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 78
    .local v3, "customKey":Ljava/lang/String;
    const-string v10, "customKey"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "customkey set with value: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolveUsername;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolveUsername;-><init>()V

    .line 80
    .local v7, "req":Lorg/telegram/tgnet/TLRPC$TL_contacts_resolveUsername;
    iput-object v3, v7, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolveUsername;->username:Ljava/lang/String;

    .line 81
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v10

    new-instance v11, Lorg/telegram/ui/Telehgram/MyPushListener$1;

    invoke-direct {v11, p0}, Lorg/telegram/ui/Telehgram/MyPushListener$1;-><init>(Lorg/telegram/ui/Telehgram/MyPushListener;)V

    invoke-virtual {v10, v7, v11}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I
    :try_end_cc
    .catch Lorg/json/JSONException; {:try_start_8d .. :try_end_cc} :catch_83

    goto/16 :goto_6
.end method
