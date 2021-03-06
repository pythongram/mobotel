.class public Lcom/onesignal/OSNotificationPayload;
.super Ljava/lang/Object;
.source "OSNotificationPayload.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onesignal/OSNotificationPayload$BackgroundImageLayout;,
        Lcom/onesignal/OSNotificationPayload$ActionButton;
    }
.end annotation


# instance fields
.field public actionButtons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/onesignal/OSNotificationPayload$ActionButton;",
            ">;"
        }
    .end annotation
.end field

.field public additionalData:Lorg/json/JSONObject;

.field public backgroundImageLayout:Lcom/onesignal/OSNotificationPayload$BackgroundImageLayout;

.field public bigPicture:Ljava/lang/String;

.field public body:Ljava/lang/String;

.field public collapseId:Ljava/lang/String;

.field public fromProjectNumber:Ljava/lang/String;

.field public groupKey:Ljava/lang/String;

.field public groupMessage:Ljava/lang/String;

.field public largeIcon:Ljava/lang/String;

.field public launchURL:Ljava/lang/String;

.field public ledColor:Ljava/lang/String;

.field public lockScreenVisibility:I

.field public notificationID:Ljava/lang/String;

.field public priority:I

.field public rawPayload:Ljava/lang/String;

.field public smallIcon:Ljava/lang/String;

.field public smallIconAccentColor:Ljava/lang/String;

.field public sound:Ljava/lang/String;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x1

    iput v0, p0, Lcom/onesignal/OSNotificationPayload;->lockScreenVisibility:I

    .line 59
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .registers 7
    .param p1, "jsonObject"    # Lorg/json/JSONObject;

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v2, 0x1

    iput v2, p0, Lcom/onesignal/OSNotificationPayload;->lockScreenVisibility:I

    .line 62
    const-string v2, "notificationID"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/onesignal/OSNotificationPayload;->notificationID:Ljava/lang/String;

    .line 63
    const-string v2, "title"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/onesignal/OSNotificationPayload;->title:Ljava/lang/String;

    .line 65
    const-string v2, "body"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/onesignal/OSNotificationPayload;->body:Ljava/lang/String;

    .line 66
    const-string v2, "additionalData"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    iput-object v2, p0, Lcom/onesignal/OSNotificationPayload;->additionalData:Lorg/json/JSONObject;

    .line 67
    const-string v2, "smallIcon"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/onesignal/OSNotificationPayload;->smallIcon:Ljava/lang/String;

    .line 68
    const-string v2, "largeIcon"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/onesignal/OSNotificationPayload;->largeIcon:Ljava/lang/String;

    .line 69
    const-string v2, "bigPicture"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/onesignal/OSNotificationPayload;->bigPicture:Ljava/lang/String;

    .line 70
    const-string v2, "smallIconAccentColor"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/onesignal/OSNotificationPayload;->smallIconAccentColor:Ljava/lang/String;

    .line 71
    const-string v2, "launchURL"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/onesignal/OSNotificationPayload;->launchURL:Ljava/lang/String;

    .line 72
    const-string v2, "sound"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/onesignal/OSNotificationPayload;->sound:Ljava/lang/String;

    .line 73
    const-string v2, "ledColor"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/onesignal/OSNotificationPayload;->ledColor:Ljava/lang/String;

    .line 74
    const-string v2, "lockScreenVisibility"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/onesignal/OSNotificationPayload;->lockScreenVisibility:I

    .line 75
    const-string v2, "groupKey"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/onesignal/OSNotificationPayload;->groupKey:Ljava/lang/String;

    .line 76
    const-string v2, "groupMessage"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/onesignal/OSNotificationPayload;->groupMessage:Ljava/lang/String;

    .line 78
    const-string v2, "actionButtons"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a3

    .line 79
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/onesignal/OSNotificationPayload;->actionButtons:Ljava/util/List;

    .line 80
    const-string v2, "actionButtons"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 81
    .local v1, "jsonArray":Lorg/json/JSONArray;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_8c
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_a3

    .line 82
    iget-object v2, p0, Lcom/onesignal/OSNotificationPayload;->actionButtons:Ljava/util/List;

    new-instance v3, Lcom/onesignal/OSNotificationPayload$ActionButton;

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/onesignal/OSNotificationPayload$ActionButton;-><init>(Lorg/json/JSONObject;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    add-int/lit8 v0, v0, 0x1

    goto :goto_8c

    .line 85
    .end local v0    # "i":I
    .end local v1    # "jsonArray":Lorg/json/JSONArray;
    :cond_a3
    const-string v2, "fromProjectNumber"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/onesignal/OSNotificationPayload;->fromProjectNumber:Ljava/lang/String;

    .line 86
    const-string v2, "collapseId"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/onesignal/OSNotificationPayload;->collapseId:Ljava/lang/String;

    .line 87
    const-string v2, "priority"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/onesignal/OSNotificationPayload;->priority:I

    .line 88
    const-string v2, "rawPayload"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/onesignal/OSNotificationPayload;->rawPayload:Ljava/lang/String;

    .line 89
    return-void
.end method


# virtual methods
.method public toJSONObject()Lorg/json/JSONObject;
    .registers 7

    .prologue
    .line 127
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 130
    .local v2, "json":Lorg/json/JSONObject;
    :try_start_5
    const-string v4, "notificationID"

    iget-object v5, p0, Lcom/onesignal/OSNotificationPayload;->notificationID:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 131
    const-string v4, "title"

    iget-object v5, p0, Lcom/onesignal/OSNotificationPayload;->title:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 132
    const-string v4, "body"

    iget-object v5, p0, Lcom/onesignal/OSNotificationPayload;->body:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 133
    iget-object v4, p0, Lcom/onesignal/OSNotificationPayload;->additionalData:Lorg/json/JSONObject;

    if-eqz v4, :cond_25

    .line 134
    const-string v4, "additionalData"

    iget-object v5, p0, Lcom/onesignal/OSNotificationPayload;->additionalData:Lorg/json/JSONObject;

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 135
    :cond_25
    const-string v4, "smallIcon"

    iget-object v5, p0, Lcom/onesignal/OSNotificationPayload;->smallIcon:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 136
    const-string v4, "largeIcon"

    iget-object v5, p0, Lcom/onesignal/OSNotificationPayload;->largeIcon:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 137
    const-string v4, "bigPicture"

    iget-object v5, p0, Lcom/onesignal/OSNotificationPayload;->bigPicture:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 138
    const-string v4, "smallIconAccentColor"

    iget-object v5, p0, Lcom/onesignal/OSNotificationPayload;->smallIconAccentColor:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 139
    const-string v4, "launchURL"

    iget-object v5, p0, Lcom/onesignal/OSNotificationPayload;->launchURL:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 140
    const-string v4, "sound"

    iget-object v5, p0, Lcom/onesignal/OSNotificationPayload;->sound:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 141
    const-string v4, "ledColor"

    iget-object v5, p0, Lcom/onesignal/OSNotificationPayload;->ledColor:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 142
    const-string v4, "lockScreenVisibility"

    iget v5, p0, Lcom/onesignal/OSNotificationPayload;->lockScreenVisibility:I

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 143
    const-string v4, "groupKey"

    iget-object v5, p0, Lcom/onesignal/OSNotificationPayload;->groupKey:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 144
    const-string v4, "groupMessage"

    iget-object v5, p0, Lcom/onesignal/OSNotificationPayload;->groupMessage:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 146
    iget-object v4, p0, Lcom/onesignal/OSNotificationPayload;->actionButtons:Ljava/util/List;

    if-eqz v4, :cond_98

    .line 147
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 148
    .local v1, "actionButtonJsonArray":Lorg/json/JSONArray;
    iget-object v4, p0, Lcom/onesignal/OSNotificationPayload;->actionButtons:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_7a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_93

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onesignal/OSNotificationPayload$ActionButton;

    .line 149
    .local v0, "actionButton":Lcom/onesignal/OSNotificationPayload$ActionButton;
    invoke-virtual {v0}, Lcom/onesignal/OSNotificationPayload$ActionButton;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_8d
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_8d} :catch_8e

    goto :goto_7a

    .line 159
    .end local v0    # "actionButton":Lcom/onesignal/OSNotificationPayload$ActionButton;
    .end local v1    # "actionButtonJsonArray":Lorg/json/JSONArray;
    :catch_8e
    move-exception v3

    .line 160
    .local v3, "t":Ljava/lang/Throwable;
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 163
    .end local v3    # "t":Ljava/lang/Throwable;
    :goto_92
    return-object v2

    .line 151
    .restart local v1    # "actionButtonJsonArray":Lorg/json/JSONArray;
    :cond_93
    :try_start_93
    const-string v4, "actionButtons"

    invoke-virtual {v2, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 153
    .end local v1    # "actionButtonJsonArray":Lorg/json/JSONArray;
    :cond_98
    const-string v4, "fromProjectNumber"

    iget-object v5, p0, Lcom/onesignal/OSNotificationPayload;->fromProjectNumber:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 154
    const-string v4, "collapseId"

    iget-object v5, p0, Lcom/onesignal/OSNotificationPayload;->collapseId:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 155
    const-string v4, "priority"

    iget v5, p0, Lcom/onesignal/OSNotificationPayload;->priority:I

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 157
    const-string v4, "rawPayload"

    iget-object v5, p0, Lcom/onesignal/OSNotificationPayload;->rawPayload:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_b4
    .catch Ljava/lang/Throwable; {:try_start_93 .. :try_end_b4} :catch_8e

    goto :goto_92
.end method
