.class Lorg/telegram/messenger/ApplicationLoader$2;
.super Ljava/lang/Object;
.source "ApplicationLoader.java"

# interfaces
.implements Lcom/onesignal/OneSignal$NotificationReceivedHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/ApplicationLoader;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/ApplicationLoader;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/ApplicationLoader;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/messenger/ApplicationLoader;

    .prologue
    .line 426
    iput-object p1, p0, Lorg/telegram/messenger/ApplicationLoader$2;->this$0:Lorg/telegram/messenger/ApplicationLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public notificationReceived(Lcom/onesignal/OSNotification;)V
    .registers 11
    .param p1, "notification"    # Lcom/onesignal/OSNotification;

    .prologue
    const/4 v8, 0x0

    .line 430
    iget-object v6, p1, Lcom/onesignal/OSNotification;->payload:Lcom/onesignal/OSNotificationPayload;

    iget-object v2, v6, Lcom/onesignal/OSNotificationPayload;->additionalData:Lorg/json/JSONObject;

    .line 436
    .local v2, "data":Lorg/json/JSONObject;
    if-eqz v2, :cond_5a

    .line 437
    const-string v6, "uri"

    invoke-virtual {v2, v6, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 438
    .local v5, "uri":Ljava/lang/String;
    if-eqz v5, :cond_24

    .line 439
    new-instance v0, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v0, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 440
    .local v0, "browserIntent":Landroid/content/Intent;
    const/high16 v6, 0x10000000

    invoke-virtual {v0, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 441
    iget-object v6, p0, Lorg/telegram/messenger/ApplicationLoader$2;->this$0:Lorg/telegram/messenger/ApplicationLoader;

    invoke-virtual {v6, v0}, Lorg/telegram/messenger/ApplicationLoader;->startActivity(Landroid/content/Intent;)V

    .line 443
    .end local v0    # "browserIntent":Landroid/content/Intent;
    :cond_24
    const-string v6, "left"

    invoke-virtual {v2, v6, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 444
    .local v3, "left":Ljava/lang/String;
    if-eqz v3, :cond_3f

    .line 445
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolveUsername;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolveUsername;-><init>()V

    .line 446
    .local v4, "req":Lorg/telegram/tgnet/TLRPC$TL_contacts_resolveUsername;
    iput-object v3, v4, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolveUsername;->username:Ljava/lang/String;

    .line 447
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v6

    new-instance v7, Lorg/telegram/messenger/ApplicationLoader$2$1;

    invoke-direct {v7, p0}, Lorg/telegram/messenger/ApplicationLoader$2$1;-><init>(Lorg/telegram/messenger/ApplicationLoader$2;)V

    invoke-virtual {v6, v4, v7}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 465
    .end local v4    # "req":Lorg/telegram/tgnet/TLRPC$TL_contacts_resolveUsername;
    :cond_3f
    const-string v6, "unlimitedchannel"

    invoke-virtual {v2, v6, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 466
    .local v1, "customKeyUnlimited":Ljava/lang/String;
    if-eqz v1, :cond_5a

    .line 467
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolveUsername;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolveUsername;-><init>()V

    .line 468
    .restart local v4    # "req":Lorg/telegram/tgnet/TLRPC$TL_contacts_resolveUsername;
    iput-object v1, v4, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolveUsername;->username:Ljava/lang/String;

    .line 469
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v6

    new-instance v7, Lorg/telegram/messenger/ApplicationLoader$2$2;

    invoke-direct {v7, p0}, Lorg/telegram/messenger/ApplicationLoader$2$2;-><init>(Lorg/telegram/messenger/ApplicationLoader$2;)V

    invoke-virtual {v6, v4, v7}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 607
    .end local v1    # "customKeyUnlimited":Ljava/lang/String;
    .end local v3    # "left":Ljava/lang/String;
    .end local v4    # "req":Lorg/telegram/tgnet/TLRPC$TL_contacts_resolveUsername;
    .end local v5    # "uri":Ljava/lang/String;
    :cond_5a
    return-void
.end method
