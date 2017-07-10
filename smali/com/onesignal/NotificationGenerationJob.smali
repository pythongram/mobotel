.class Lcom/onesignal/NotificationGenerationJob;
.super Ljava/lang/Object;
.source "NotificationGenerationJob.java"


# instance fields
.field context:Landroid/content/Context;

.field jsonPayload:Lorg/json/JSONObject;

.field orgFlags:Ljava/lang/Integer;

.field orgSound:Landroid/net/Uri;

.field overriddenBodyFromExtender:Ljava/lang/CharSequence;

.field overriddenFlags:Ljava/lang/Integer;

.field overriddenSound:Landroid/net/Uri;

.field overriddenTitleFromExtender:Ljava/lang/CharSequence;

.field overrideSettings:Lcom/onesignal/NotificationExtenderService$OverrideSettings;

.field restoring:Z

.field showAsAlert:Z

.field shownTimeStamp:Ljava/lang/Long;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/onesignal/NotificationGenerationJob;->context:Landroid/content/Context;

    .line 56
    return-void
.end method


# virtual methods
.method getAndroidId()Ljava/lang/Integer;
    .registers 3

    .prologue
    .line 73
    iget-object v0, p0, Lcom/onesignal/NotificationGenerationJob;->overrideSettings:Lcom/onesignal/NotificationExtenderService$OverrideSettings;

    if-nez v0, :cond_b

    .line 74
    new-instance v0, Lcom/onesignal/NotificationExtenderService$OverrideSettings;

    invoke-direct {v0}, Lcom/onesignal/NotificationExtenderService$OverrideSettings;-><init>()V

    iput-object v0, p0, Lcom/onesignal/NotificationGenerationJob;->overrideSettings:Lcom/onesignal/NotificationExtenderService$OverrideSettings;

    .line 75
    :cond_b
    iget-object v0, p0, Lcom/onesignal/NotificationGenerationJob;->overrideSettings:Lcom/onesignal/NotificationExtenderService$OverrideSettings;

    iget-object v0, v0, Lcom/onesignal/NotificationExtenderService$OverrideSettings;->androidNotificationId:Ljava/lang/Integer;

    if-nez v0, :cond_22

    .line 76
    iget-object v0, p0, Lcom/onesignal/NotificationGenerationJob;->overrideSettings:Lcom/onesignal/NotificationExtenderService$OverrideSettings;

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    invoke-virtual {v1}, Ljava/util/Random;->nextInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/onesignal/NotificationExtenderService$OverrideSettings;->androidNotificationId:Ljava/lang/Integer;

    .line 78
    :cond_22
    iget-object v0, p0, Lcom/onesignal/NotificationGenerationJob;->overrideSettings:Lcom/onesignal/NotificationExtenderService$OverrideSettings;

    iget-object v0, v0, Lcom/onesignal/NotificationExtenderService$OverrideSettings;->androidNotificationId:Ljava/lang/Integer;

    return-object v0
.end method

.method getBody()Ljava/lang/CharSequence;
    .registers 4

    .prologue
    .line 67
    iget-object v0, p0, Lcom/onesignal/NotificationGenerationJob;->overriddenBodyFromExtender:Ljava/lang/CharSequence;

    if-eqz v0, :cond_7

    .line 68
    iget-object v0, p0, Lcom/onesignal/NotificationGenerationJob;->overriddenBodyFromExtender:Ljava/lang/CharSequence;

    .line 69
    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/onesignal/NotificationGenerationJob;->jsonPayload:Lorg/json/JSONObject;

    const-string v1, "alert"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method

.method getTitle()Ljava/lang/CharSequence;
    .registers 4

    .prologue
    .line 61
    iget-object v0, p0, Lcom/onesignal/NotificationGenerationJob;->overriddenTitleFromExtender:Ljava/lang/CharSequence;

    if-eqz v0, :cond_7

    .line 62
    iget-object v0, p0, Lcom/onesignal/NotificationGenerationJob;->overriddenTitleFromExtender:Ljava/lang/CharSequence;

    .line 63
    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/onesignal/NotificationGenerationJob;->jsonPayload:Lorg/json/JSONObject;

    const-string v1, "title"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method

.method setAndroidIdWithOutOverriding(Ljava/lang/Integer;)V
    .registers 3
    .param p1, "id"    # Ljava/lang/Integer;

    .prologue
    .line 82
    if-nez p1, :cond_3

    .line 91
    :cond_2
    :goto_2
    return-void

    .line 85
    :cond_3
    iget-object v0, p0, Lcom/onesignal/NotificationGenerationJob;->overrideSettings:Lcom/onesignal/NotificationExtenderService$OverrideSettings;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/onesignal/NotificationGenerationJob;->overrideSettings:Lcom/onesignal/NotificationExtenderService$OverrideSettings;

    iget-object v0, v0, Lcom/onesignal/NotificationExtenderService$OverrideSettings;->androidNotificationId:Ljava/lang/Integer;

    if-nez v0, :cond_2

    .line 88
    :cond_d
    iget-object v0, p0, Lcom/onesignal/NotificationGenerationJob;->overrideSettings:Lcom/onesignal/NotificationExtenderService$OverrideSettings;

    if-nez v0, :cond_18

    .line 89
    new-instance v0, Lcom/onesignal/NotificationExtenderService$OverrideSettings;

    invoke-direct {v0}, Lcom/onesignal/NotificationExtenderService$OverrideSettings;-><init>()V

    iput-object v0, p0, Lcom/onesignal/NotificationGenerationJob;->overrideSettings:Lcom/onesignal/NotificationExtenderService$OverrideSettings;

    .line 90
    :cond_18
    iget-object v0, p0, Lcom/onesignal/NotificationGenerationJob;->overrideSettings:Lcom/onesignal/NotificationExtenderService$OverrideSettings;

    iput-object p1, v0, Lcom/onesignal/NotificationExtenderService$OverrideSettings;->androidNotificationId:Ljava/lang/Integer;

    goto :goto_2
.end method
