.class Lcom/onesignal/OneSignalStateSynchronizer$UserState;
.super Ljava/lang/Object;
.source "OneSignalStateSynchronizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onesignal/OneSignalStateSynchronizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UserState"
.end annotation


# instance fields
.field private final NOTIFICATION_TYPES_NO_PERMISSION:I

.field private final NOTIFICATION_TYPES_SUBSCRIBED:I

.field private final NOTIFICATION_TYPES_UNSUBSCRIBE:I

.field dependValues:Lorg/json/JSONObject;

.field private persistKey:Ljava/lang/String;

.field syncValues:Lorg/json/JSONObject;

.field final synthetic this$0:Lcom/onesignal/OneSignalStateSynchronizer;


# direct methods
.method private constructor <init>(Lcom/onesignal/OneSignalStateSynchronizer;Ljava/lang/String;Z)V
    .registers 5
    .param p1, "this$0"    # Lcom/onesignal/OneSignalStateSynchronizer;
    .param p2, "inPersistKey"    # Ljava/lang/String;
    .param p3, "load"    # Z

    .prologue
    .line 243
    iput-object p1, p0, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->this$0:Lcom/onesignal/OneSignalStateSynchronizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 235
    const/4 v0, 0x1

    iput v0, p0, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->NOTIFICATION_TYPES_SUBSCRIBED:I

    .line 236
    const/4 v0, 0x0

    iput v0, p0, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->NOTIFICATION_TYPES_NO_PERMISSION:I

    .line 237
    const/4 v0, -0x2

    iput v0, p0, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->NOTIFICATION_TYPES_UNSUBSCRIBE:I

    .line 244
    iput-object p2, p0, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->persistKey:Ljava/lang/String;

    .line 245
    if-eqz p3, :cond_16

    .line 246
    invoke-direct {p0}, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->loadState()V

    .line 251
    :goto_15
    return-void

    .line 248
    :cond_16
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->dependValues:Lorg/json/JSONObject;

    .line 249
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->syncValues:Lorg/json/JSONObject;

    goto :goto_15
.end method

.method synthetic constructor <init>(Lcom/onesignal/OneSignalStateSynchronizer;Ljava/lang/String;ZLcom/onesignal/OneSignalStateSynchronizer$1;)V
    .registers 5
    .param p1, "x0"    # Lcom/onesignal/OneSignalStateSynchronizer;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Z
    .param p4, "x3"    # Lcom/onesignal/OneSignalStateSynchronizer$1;

    .prologue
    .line 233
    invoke-direct {p0, p1, p2, p3}, Lcom/onesignal/OneSignalStateSynchronizer$UserState;-><init>(Lcom/onesignal/OneSignalStateSynchronizer;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/onesignal/OneSignalStateSynchronizer$UserState;Lcom/onesignal/OneSignalStateSynchronizer$UserState;Z)Lorg/json/JSONObject;
    .registers 4
    .param p0, "x0"    # Lcom/onesignal/OneSignalStateSynchronizer$UserState;
    .param p1, "x1"    # Lcom/onesignal/OneSignalStateSynchronizer$UserState;
    .param p2, "x2"    # Z

    .prologue
    .line 233
    invoke-direct {p0, p1, p2}, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->generateJsonDiff(Lcom/onesignal/OneSignalStateSynchronizer$UserState;Z)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/onesignal/OneSignalStateSynchronizer$UserState;Ljava/lang/String;)Lcom/onesignal/OneSignalStateSynchronizer$UserState;
    .registers 3
    .param p0, "x0"    # Lcom/onesignal/OneSignalStateSynchronizer$UserState;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 233
    invoke-direct {p0, p1}, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->deepClone(Ljava/lang/String;)Lcom/onesignal/OneSignalStateSynchronizer$UserState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/onesignal/OneSignalStateSynchronizer$UserState;)I
    .registers 2
    .param p0, "x0"    # Lcom/onesignal/OneSignalStateSynchronizer$UserState;

    .prologue
    .line 233
    invoke-direct {p0}, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->getNotificationTypes()I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/onesignal/OneSignalStateSynchronizer$UserState;)V
    .registers 1
    .param p0, "x0"    # Lcom/onesignal/OneSignalStateSynchronizer$UserState;

    .prologue
    .line 233
    invoke-direct {p0}, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->persistState()V

    return-void
.end method

.method static synthetic access$800(Lcom/onesignal/OneSignalStateSynchronizer$UserState;Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .registers 3
    .param p0, "x0"    # Lcom/onesignal/OneSignalStateSynchronizer$UserState;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Lorg/json/JSONObject;

    .prologue
    .line 233
    invoke-direct {p0, p1, p2}, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->persistStateAfterSync(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    return-void
.end method

.method private addDependFields()V
    .registers 4

    .prologue
    .line 268
    :try_start_0
    iget-object v0, p0, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->syncValues:Lorg/json/JSONObject;

    const-string v1, "notification_types"

    invoke-direct {p0}, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->getNotificationTypes()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_b
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_b} :catch_c

    .line 270
    :goto_b
    return-void

    .line 269
    :catch_c
    move-exception v0

    goto :goto_b
.end method

.method private deepClone(Ljava/lang/String;)Lcom/onesignal/OneSignalStateSynchronizer$UserState;
    .registers 6
    .param p1, "persistKey"    # Ljava/lang/String;

    .prologue
    .line 254
    new-instance v0, Lcom/onesignal/OneSignalStateSynchronizer$UserState;

    iget-object v2, p0, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->this$0:Lcom/onesignal/OneSignalStateSynchronizer;

    const/4 v3, 0x0

    invoke-direct {v0, v2, p1, v3}, Lcom/onesignal/OneSignalStateSynchronizer$UserState;-><init>(Lcom/onesignal/OneSignalStateSynchronizer;Ljava/lang/String;Z)V

    .line 257
    .local v0, "clonedUserState":Lcom/onesignal/OneSignalStateSynchronizer$UserState;
    :try_start_8
    new-instance v2, Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->dependValues:Lorg/json/JSONObject;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v2, v0, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->dependValues:Lorg/json/JSONObject;

    .line 258
    new-instance v2, Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->syncValues:Lorg/json/JSONObject;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v2, v0, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->syncValues:Lorg/json/JSONObject;
    :try_end_22
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_22} :catch_23

    .line 263
    :goto_22
    return-object v0

    .line 259
    :catch_23
    move-exception v1

    .line 260
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_22
.end method

.method private generateJsonDiff(Lcom/onesignal/OneSignalStateSynchronizer$UserState;Z)Lorg/json/JSONObject;
    .registers 9
    .param p1, "newState"    # Lcom/onesignal/OneSignalStateSynchronizer$UserState;
    .param p2, "isSessionCall"    # Z

    .prologue
    const/4 v3, 0x0

    .line 331
    invoke-direct {p0}, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->addDependFields()V

    invoke-direct {p1}, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->addDependFields()V

    .line 332
    invoke-direct {p0, p1}, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->getGroupChangeFields(Lcom/onesignal/OneSignalStateSynchronizer$UserState;)Ljava/util/Set;

    move-result-object v1

    .line 333
    .local v1, "includeFields":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->syncValues:Lorg/json/JSONObject;

    iget-object v5, p1, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->syncValues:Lorg/json/JSONObject;

    # invokes: Lcom/onesignal/OneSignalStateSynchronizer;->generateJsonDiff(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/util/Set;)Lorg/json/JSONObject;
    invoke-static {v4, v5, v3, v1}, Lcom/onesignal/OneSignalStateSynchronizer;->access$400(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/util/Set;)Lorg/json/JSONObject;

    move-result-object v2

    .line 335
    .local v2, "sendJson":Lorg/json/JSONObject;
    if-nez p2, :cond_24

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "{}"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_24

    move-object v2, v3

    .line 346
    .end local v2    # "sendJson":Lorg/json/JSONObject;
    :cond_23
    :goto_23
    return-object v2

    .line 340
    .restart local v2    # "sendJson":Lorg/json/JSONObject;
    :cond_24
    :try_start_24
    const-string v3, "app_id"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_23

    .line 341
    const-string v3, "app_id"

    iget-object v4, p0, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->syncValues:Lorg/json/JSONObject;

    const-string v5, "app_id"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_39
    .catch Lorg/json/JSONException; {:try_start_24 .. :try_end_39} :catch_3a

    goto :goto_23

    .line 342
    :catch_3a
    move-exception v0

    .line 343
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_23
.end method

.method private getGroupChangeFields(Lcom/onesignal/OneSignalStateSynchronizer$UserState;)Ljava/util/Set;
    .registers 6
    .param p1, "changedTo"    # Lcom/onesignal/OneSignalStateSynchronizer$UserState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onesignal/OneSignalStateSynchronizer$UserState;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 290
    :try_start_0
    iget-object v0, p0, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->dependValues:Lorg/json/JSONObject;

    const-string v1, "loc_time_stamp"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    iget-object v2, p1, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->dependValues:Lorg/json/JSONObject;

    const-string v3, "loc_time_stamp"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_62

    iget-object v0, p0, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->syncValues:Lorg/json/JSONObject;

    const-string v1, "lat"

    .line 291
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v0

    iget-object v2, p1, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->syncValues:Lorg/json/JSONObject;

    const-string v3, "lat"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-nez v0, :cond_62

    iget-object v0, p0, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->syncValues:Lorg/json/JSONObject;

    const-string v1, "long"

    .line 292
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v0

    iget-object v2, p1, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->syncValues:Lorg/json/JSONObject;

    const-string v3, "long"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-nez v0, :cond_62

    iget-object v0, p0, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->syncValues:Lorg/json/JSONObject;

    const-string v1, "loc_acc"

    .line 293
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v0

    iget-object v2, p1, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->syncValues:Lorg/json/JSONObject;

    const-string v3, "loc_acc"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-nez v0, :cond_62

    iget-object v0, p0, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->syncValues:Lorg/json/JSONObject;

    const-string v1, "loc_type "

    .line 294
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p1, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->syncValues:Lorg/json/JSONObject;

    const-string v2, "loc_type"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    if-eq v0, v1, :cond_77

    .line 295
    :cond_62
    iget-object v0, p1, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->syncValues:Lorg/json/JSONObject;

    const-string v1, "loc_bg"

    iget-object v2, p1, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->dependValues:Lorg/json/JSONObject;

    const-string v3, "loc_bg"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 296
    # getter for: Lcom/onesignal/OneSignalStateSynchronizer;->LOCATION_FIELDS_SET:Ljava/util/Set;
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->access$300()Ljava/util/Set;
    :try_end_74
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_74} :catch_76

    move-result-object v0

    .line 300
    :goto_75
    return-object v0

    .line 298
    :catch_76
    move-exception v0

    .line 300
    :cond_77
    const/4 v0, 0x0

    goto :goto_75
.end method

.method private getNotificationTypes()I
    .registers 8

    .prologue
    const/4 v3, -0x2

    const/4 v4, 0x1

    .line 273
    iget-object v5, p0, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->dependValues:Lorg/json/JSONObject;

    const-string v6, "subscribableStatus"

    invoke-virtual {v5, v6, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 274
    .local v1, "subscribableStatus":I
    if-ge v1, v3, :cond_d

    .line 285
    .end local v1    # "subscribableStatus":I
    :goto_c
    return v1

    .line 277
    .restart local v1    # "subscribableStatus":I
    :cond_d
    iget-object v5, p0, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->dependValues:Lorg/json/JSONObject;

    const-string v6, "androidPermission"

    invoke-virtual {v5, v6, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 278
    .local v0, "androidPermission":Z
    if-nez v0, :cond_19

    .line 279
    const/4 v1, 0x0

    goto :goto_c

    .line 281
    :cond_19
    iget-object v5, p0, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->dependValues:Lorg/json/JSONObject;

    const-string v6, "userSubscribePref"

    invoke-virtual {v5, v6, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 282
    .local v2, "userSubscribePref":Z
    if-nez v2, :cond_25

    move v1, v3

    .line 283
    goto :goto_c

    :cond_25
    move v1, v4

    .line 285
    goto :goto_c
.end method

.method private loadState()V
    .registers 11

    .prologue
    const/4 v8, 0x0

    .line 366
    # getter for: Lcom/onesignal/OneSignalStateSynchronizer;->appContext:Landroid/content/Context;
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->access$500()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/onesignal/OneSignal;->getGcmPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 368
    .local v2, "prefs":Landroid/content/SharedPreferences;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ONESIGNAL_USERSTATE_DEPENDVALYES_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->persistKey:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 370
    .local v0, "dependValuesStr":Ljava/lang/String;
    if-nez v0, :cond_89

    .line 371
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    iput-object v6, p0, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->dependValues:Lorg/json/JSONObject;

    .line 374
    const/4 v5, 0x1

    .line 376
    .local v5, "userSubscribePref":Z
    :try_start_2c
    iget-object v6, p0, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->persistKey:Ljava/lang/String;

    const-string v7, "CURRENT_STATE"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_81

    .line 377
    const-string v6, "ONESIGNAL_SUBSCRIPTION"

    const/4 v7, 0x1

    invoke-interface {v2, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 381
    .local v3, "subscribableStatus":I
    :goto_3d
    const/4 v6, -0x2

    if-ne v3, v6, :cond_42

    .line 382
    const/4 v3, 0x1

    .line 383
    const/4 v5, 0x0

    .line 386
    :cond_42
    iget-object v6, p0, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->dependValues:Lorg/json/JSONObject;

    const-string v7, "subscribableStatus"

    invoke-virtual {v6, v7, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 387
    iget-object v6, p0, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->dependValues:Lorg/json/JSONObject;

    const-string v7, "userSubscribePref"

    invoke-virtual {v6, v7, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_50
    .catch Lorg/json/JSONException; {:try_start_2c .. :try_end_50} :catch_a3

    .line 398
    .end local v3    # "subscribableStatus":I
    .end local v5    # "userSubscribePref":Z
    :goto_50
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ONESIGNAL_USERSTATE_SYNCVALYES_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->persistKey:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 400
    .local v4, "syncValuesStr":Ljava/lang/String;
    if-nez v4, :cond_96

    .line 401
    :try_start_6b
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    iput-object v6, p0, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->syncValues:Lorg/json/JSONObject;

    .line 402
    iget-object v6, p0, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->syncValues:Lorg/json/JSONObject;

    const-string v7, "identifier"

    const-string v8, "GT_REGISTRATION_ID"

    const/4 v9, 0x0

    invoke-interface {v2, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_80
    .catch Lorg/json/JSONException; {:try_start_6b .. :try_end_80} :catch_9e

    .line 409
    :goto_80
    return-void

    .line 379
    .end local v4    # "syncValuesStr":Ljava/lang/String;
    .restart local v5    # "userSubscribePref":Z
    :cond_81
    :try_start_81
    const-string v6, "ONESIGNAL_SYNCED_SUBSCRIPTION"

    const/4 v7, 0x1

    invoke-interface {v2, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_87
    .catch Lorg/json/JSONException; {:try_start_81 .. :try_end_87} :catch_a3

    move-result v3

    .restart local v3    # "subscribableStatus":I
    goto :goto_3d

    .line 392
    .end local v3    # "subscribableStatus":I
    .end local v5    # "userSubscribePref":Z
    :cond_89
    :try_start_89
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v6, p0, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->dependValues:Lorg/json/JSONObject;
    :try_end_90
    .catch Lorg/json/JSONException; {:try_start_89 .. :try_end_90} :catch_91

    goto :goto_50

    .line 393
    :catch_91
    move-exception v1

    .line 394
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_50

    .line 405
    .end local v1    # "e":Lorg/json/JSONException;
    .restart local v4    # "syncValuesStr":Ljava/lang/String;
    :cond_96
    :try_start_96
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v6, p0, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->syncValues:Lorg/json/JSONObject;
    :try_end_9d
    .catch Lorg/json/JSONException; {:try_start_96 .. :try_end_9d} :catch_9e

    goto :goto_80

    .line 406
    :catch_9e
    move-exception v1

    .line 407
    .restart local v1    # "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_80

    .line 388
    .end local v1    # "e":Lorg/json/JSONException;
    .end local v4    # "syncValuesStr":Ljava/lang/String;
    .restart local v5    # "userSubscribePref":Z
    :catch_a3
    move-exception v6

    goto :goto_50
.end method

.method private modifySyncValuesJsonArray(Ljava/lang/String;)V
    .registers 10
    .param p1, "baseKey"    # Ljava/lang/String;

    .prologue
    .line 425
    iget-object v5, p0, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->syncValues:Lorg/json/JSONObject;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_d"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_37

    iget-object v5, p0, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->syncValues:Lorg/json/JSONObject;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_d"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_37

    .line 451
    :goto_36
    return-void

    .line 429
    :cond_37
    :try_start_37
    iget-object v5, p0, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->syncValues:Lorg/json/JSONObject;

    invoke-virtual {v5, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9d

    iget-object v5, p0, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->syncValues:Lorg/json/JSONObject;

    invoke-virtual {v5, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 430
    .local v2, "orgArray":Lorg/json/JSONArray;
    :goto_45
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 432
    .local v4, "tempArray":Lorg/json/JSONArray;
    iget-object v5, p0, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->syncValues:Lorg/json/JSONObject;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_d"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a5

    .line 433
    iget-object v5, p0, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->syncValues:Lorg/json/JSONObject;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_d"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    # invokes: Lcom/onesignal/OneSignalStateSynchronizer;->toStringNE(Lorg/json/JSONArray;)Ljava/lang/String;
    invoke-static {v5}, Lcom/onesignal/OneSignalStateSynchronizer;->access$700(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v3

    .line 434
    .local v3, "remArrayStr":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_83
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v0, v5, :cond_a6

    .line 435
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_9a

    .line 436
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 434
    :cond_9a
    add-int/lit8 v0, v0, 0x1

    goto :goto_83

    .line 429
    .end local v0    # "i":I
    .end local v2    # "orgArray":Lorg/json/JSONArray;
    .end local v3    # "remArrayStr":Ljava/lang/String;
    .end local v4    # "tempArray":Lorg/json/JSONArray;
    :cond_9d
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    goto :goto_45

    .line 450
    :catch_a3
    move-exception v5

    goto :goto_36

    .line 439
    .restart local v2    # "orgArray":Lorg/json/JSONArray;
    .restart local v4    # "tempArray":Lorg/json/JSONArray;
    :cond_a5
    move-object v4, v2

    .line 441
    :cond_a6
    iget-object v5, p0, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->syncValues:Lorg/json/JSONObject;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_a"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_eb

    .line 442
    iget-object v5, p0, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->syncValues:Lorg/json/JSONObject;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_a"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 443
    .local v1, "newArray":Lorg/json/JSONArray;
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_db
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v0, v5, :cond_eb

    .line 444
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 443
    add-int/lit8 v0, v0, 0x1

    goto :goto_db

    .line 447
    .end local v0    # "i":I
    .end local v1    # "newArray":Lorg/json/JSONArray;
    :cond_eb
    iget-object v5, p0, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->syncValues:Lorg/json/JSONObject;

    invoke-virtual {v5, p1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 448
    iget-object v5, p0, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->syncValues:Lorg/json/JSONObject;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_a"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 449
    iget-object v5, p0, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->syncValues:Lorg/json/JSONObject;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_d"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_120
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_120} :catch_a3

    goto/16 :goto_36
.end method

.method private persistState()V
    .registers 6

    .prologue
    .line 412
    # getter for: Lcom/onesignal/OneSignalStateSynchronizer;->syncLock:Ljava/lang/Object;
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->access$600()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 413
    :try_start_5
    const-string v2, "pkgs"

    invoke-direct {p0, v2}, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->modifySyncValuesJsonArray(Ljava/lang/String;)V

    .line 415
    # getter for: Lcom/onesignal/OneSignalStateSynchronizer;->appContext:Landroid/content/Context;
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->access$500()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/onesignal/OneSignal;->getGcmPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 416
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 418
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ONESIGNAL_USERSTATE_SYNCVALYES_"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->persistKey:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->syncValues:Lorg/json/JSONObject;

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 419
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ONESIGNAL_USERSTATE_DEPENDVALYES_"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->persistKey:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->dependValues:Lorg/json/JSONObject;

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 420
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 421
    monitor-exit v3

    .line 422
    return-void

    .line 421
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "prefs":Landroid/content/SharedPreferences;
    :catchall_57
    move-exception v2

    monitor-exit v3
    :try_end_59
    .catchall {:try_start_5 .. :try_end_59} :catchall_57

    throw v2
.end method

.method private persistStateAfterSync(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .registers 6
    .param p1, "inDependValues"    # Lorg/json/JSONObject;
    .param p2, "inSyncValues"    # Lorg/json/JSONObject;

    .prologue
    const/4 v2, 0x0

    .line 454
    if-eqz p1, :cond_a

    .line 455
    iget-object v0, p0, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->dependValues:Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->dependValues:Lorg/json/JSONObject;

    # invokes: Lcom/onesignal/OneSignalStateSynchronizer;->generateJsonDiff(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/util/Set;)Lorg/json/JSONObject;
    invoke-static {v0, p1, v1, v2}, Lcom/onesignal/OneSignalStateSynchronizer;->access$400(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/util/Set;)Lorg/json/JSONObject;

    .line 457
    :cond_a
    if-eqz p2, :cond_16

    .line 458
    iget-object v0, p0, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->syncValues:Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->syncValues:Lorg/json/JSONObject;

    # invokes: Lcom/onesignal/OneSignalStateSynchronizer;->generateJsonDiff(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/util/Set;)Lorg/json/JSONObject;
    invoke-static {v0, p2, v1, v2}, Lcom/onesignal/OneSignalStateSynchronizer;->access$400(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/util/Set;)Lorg/json/JSONObject;

    .line 459
    invoke-virtual {p0, p2, v2}, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->mergeTags(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 462
    :cond_16
    if-nez p1, :cond_1a

    if-eqz p2, :cond_1d

    .line 463
    :cond_1a
    invoke-direct {p0}, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->persistState()V

    .line 464
    :cond_1d
    return-void
.end method


# virtual methods
.method clearLocation()V
    .registers 5

    .prologue
    .line 318
    :try_start_0
    iget-object v1, p0, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->syncValues:Lorg/json/JSONObject;

    const-string v2, "lat"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 319
    iget-object v1, p0, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->syncValues:Lorg/json/JSONObject;

    const-string v2, "long"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 320
    iget-object v1, p0, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->syncValues:Lorg/json/JSONObject;

    const-string v2, "loc_acc"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 321
    iget-object v1, p0, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->syncValues:Lorg/json/JSONObject;

    const-string v2, "loc_type"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 322
    iget-object v1, p0, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->syncValues:Lorg/json/JSONObject;

    const-string v2, "loc_bg"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 323
    iget-object v1, p0, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->dependValues:Lorg/json/JSONObject;

    const-string v2, "loc_bg"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 324
    iget-object v1, p0, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->dependValues:Lorg/json/JSONObject;

    const-string v2, "loc_time_stamp"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_38
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_38} :catch_39

    .line 328
    :goto_38
    return-void

    .line 325
    :catch_39
    move-exception v0

    .line 326
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_38
.end method

.method mergeTags(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .registers 11
    .param p1, "inSyncValues"    # Lorg/json/JSONObject;
    .param p2, "omitKeys"    # Lorg/json/JSONObject;

    .prologue
    .line 467
    # getter for: Lcom/onesignal/OneSignalStateSynchronizer;->syncLock:Ljava/lang/Object;
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->access$600()Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 468
    :try_start_5
    const-string v5, "tags"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4b

    .line 470
    iget-object v5, p0, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->syncValues:Lorg/json/JSONObject;

    const-string v7, "tags"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_6a

    move-result v5

    if-eqz v5, :cond_54

    .line 472
    :try_start_17
    new-instance v4, Lorg/json/JSONObject;

    iget-object v5, p0, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->syncValues:Lorg/json/JSONObject;

    const-string v7, "tags"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_24
    .catch Lorg/json/JSONException; {:try_start_17 .. :try_end_24} :catch_4d
    .catchall {:try_start_17 .. :try_end_24} :catchall_6a

    .line 480
    .local v4, "newTags":Lorg/json/JSONObject;
    :goto_24
    :try_start_24
    const-string v5, "tags"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 481
    .local v0, "curTags":Lorg/json/JSONObject;
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;
    :try_end_2d
    .catchall {:try_start_24 .. :try_end_2d} :catchall_6a

    move-result-object v3

    .line 485
    .local v3, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_2e
    :goto_2e
    :try_start_2e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6d

    .line 486
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 487
    .local v2, "key":Ljava/lang/String;
    const-string v5, ""

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5a

    .line 488
    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_49
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_49} :catch_4a
    .catchall {:try_start_2e .. :try_end_49} :catchall_6a

    goto :goto_2e

    .line 497
    .end local v2    # "key":Ljava/lang/String;
    :catch_4a
    move-exception v5

    .line 499
    .end local v0    # "curTags":Lorg/json/JSONObject;
    .end local v3    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v4    # "newTags":Lorg/json/JSONObject;
    :cond_4b
    :goto_4b
    :try_start_4b
    monitor-exit v6

    .line 500
    return-void

    .line 473
    :catch_4d
    move-exception v1

    .line 474
    .local v1, "e":Lorg/json/JSONException;
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 475
    .restart local v4    # "newTags":Lorg/json/JSONObject;
    goto :goto_24

    .line 478
    .end local v1    # "e":Lorg/json/JSONException;
    .end local v4    # "newTags":Lorg/json/JSONObject;
    :cond_54
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V
    :try_end_59
    .catchall {:try_start_4b .. :try_end_59} :catchall_6a

    .restart local v4    # "newTags":Lorg/json/JSONObject;
    goto :goto_24

    .line 489
    .restart local v0    # "curTags":Lorg/json/JSONObject;
    .restart local v2    # "key":Ljava/lang/String;
    .restart local v3    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_5a
    if-eqz p2, :cond_62

    :try_start_5c
    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2e

    .line 490
    :cond_62
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_69
    .catch Ljava/lang/Throwable; {:try_start_5c .. :try_end_69} :catch_4a
    .catchall {:try_start_5c .. :try_end_69} :catchall_6a

    goto :goto_2e

    .line 499
    .end local v0    # "curTags":Lorg/json/JSONObject;
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v4    # "newTags":Lorg/json/JSONObject;
    :catchall_6a
    move-exception v5

    :try_start_6b
    monitor-exit v6
    :try_end_6c
    .catchall {:try_start_6b .. :try_end_6c} :catchall_6a

    throw v5

    .line 493
    .restart local v0    # "curTags":Lorg/json/JSONObject;
    .restart local v3    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v4    # "newTags":Lorg/json/JSONObject;
    :cond_6d
    :try_start_6d
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v7, "{}"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_82

    .line 494
    iget-object v5, p0, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->syncValues:Lorg/json/JSONObject;

    const-string v7, "tags"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_4b

    .line 496
    :cond_82
    iget-object v5, p0, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->syncValues:Lorg/json/JSONObject;

    const-string v7, "tags"

    invoke-virtual {v5, v7, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_89
    .catch Ljava/lang/Throwable; {:try_start_6d .. :try_end_89} :catch_4a
    .catchall {:try_start_6d .. :try_end_89} :catchall_6a

    goto :goto_4b
.end method

.method set(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 351
    :try_start_0
    iget-object v1, p0, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->syncValues:Lorg/json/JSONObject;

    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_5} :catch_6

    .line 355
    :goto_5
    return-void

    .line 352
    :catch_6
    move-exception v0

    .line 353
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_5
.end method

.method setLocation(Lcom/onesignal/LocationGMS$LocationPoint;)V
    .registers 6
    .param p1, "point"    # Lcom/onesignal/LocationGMS$LocationPoint;

    .prologue
    .line 305
    :try_start_0
    iget-object v1, p0, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->syncValues:Lorg/json/JSONObject;

    const-string v2, "lat"

    iget-object v3, p1, Lcom/onesignal/LocationGMS$LocationPoint;->lat:Ljava/lang/Double;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 306
    iget-object v1, p0, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->syncValues:Lorg/json/JSONObject;

    const-string v2, "long"

    iget-object v3, p1, Lcom/onesignal/LocationGMS$LocationPoint;->log:Ljava/lang/Double;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 307
    iget-object v1, p0, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->syncValues:Lorg/json/JSONObject;

    const-string v2, "loc_acc"

    iget-object v3, p1, Lcom/onesignal/LocationGMS$LocationPoint;->accuracy:Ljava/lang/Float;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 308
    iget-object v1, p0, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->syncValues:Lorg/json/JSONObject;

    const-string v2, "loc_type"

    iget-object v3, p1, Lcom/onesignal/LocationGMS$LocationPoint;->type:Ljava/lang/Integer;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 309
    iget-object v1, p0, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->dependValues:Lorg/json/JSONObject;

    const-string v2, "loc_bg"

    iget-object v3, p1, Lcom/onesignal/LocationGMS$LocationPoint;->bg:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 310
    iget-object v1, p0, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->dependValues:Lorg/json/JSONObject;

    const-string v2, "loc_time_stamp"

    iget-object v3, p1, Lcom/onesignal/LocationGMS$LocationPoint;->timeStamp:Ljava/lang/Long;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_36
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_36} :catch_37

    .line 314
    :goto_36
    return-void

    .line 311
    :catch_37
    move-exception v0

    .line 312
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_36
.end method

.method setState(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 359
    :try_start_0
    iget-object v1, p0, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->dependValues:Lorg/json/JSONObject;

    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_5} :catch_6

    .line 363
    :goto_5
    return-void

    .line 360
    :catch_6
    move-exception v0

    .line 361
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_5
.end method
