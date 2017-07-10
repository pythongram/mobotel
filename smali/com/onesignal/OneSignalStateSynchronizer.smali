.class Lcom/onesignal/OneSignalStateSynchronizer;
.super Ljava/lang/Object;
.source "OneSignalStateSynchronizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onesignal/OneSignalStateSynchronizer$GetTagsResult;,
        Lcom/onesignal/OneSignalStateSynchronizer$NetworkHandlerThread;,
        Lcom/onesignal/OneSignalStateSynchronizer$UserState;
    }
.end annotation


# static fields
.field private static final LOCATION_FIELDS:[Ljava/lang/String;

.field private static final LOCATION_FIELDS_SET:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static appContext:Landroid/content/Context;

.field private static currentUserState:Lcom/onesignal/OneSignalStateSynchronizer$UserState;

.field private static final networkHandlerSyncLock:Ljava/lang/Object;

.field static networkHandlerThreads:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/onesignal/OneSignalStateSynchronizer$NetworkHandlerThread;",
            ">;"
        }
    .end annotation
.end field

.field private static nextSyncIsSession:Z

.field private static serverSuccess:Z

.field private static final syncLock:Ljava/lang/Object;

.field private static toSyncUserState:Lcom/onesignal/OneSignalStateSynchronizer$UserState;

.field private static waitingForSessionResponse:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 48
    sput-boolean v2, Lcom/onesignal/OneSignalStateSynchronizer;->nextSyncIsSession:Z

    sput-boolean v2, Lcom/onesignal/OneSignalStateSynchronizer;->waitingForSessionResponse:Z

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/onesignal/OneSignalStateSynchronizer;->networkHandlerThreads:Ljava/util/HashMap;

    .line 65
    new-instance v0, Lcom/onesignal/OneSignalStateSynchronizer$1;

    invoke-direct {v0}, Lcom/onesignal/OneSignalStateSynchronizer$1;-><init>()V

    sput-object v0, Lcom/onesignal/OneSignalStateSynchronizer;->networkHandlerSyncLock:Ljava/lang/Object;

    .line 69
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "lat"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "long"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "loc_acc"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "loc_type"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "loc_bg"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "ad_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/onesignal/OneSignalStateSynchronizer;->LOCATION_FIELDS:[Ljava/lang/String;

    .line 70
    new-instance v0, Ljava/util/HashSet;

    sget-object v1, Lcom/onesignal/OneSignalStateSynchronizer;->LOCATION_FIELDS:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/onesignal/OneSignalStateSynchronizer;->LOCATION_FIELDS_SET:Ljava/util/Set;

    .line 73
    new-instance v0, Lcom/onesignal/OneSignalStateSynchronizer$2;

    invoke-direct {v0}, Lcom/onesignal/OneSignalStateSynchronizer$2;-><init>()V

    sput-object v0, Lcom/onesignal/OneSignalStateSynchronizer;->syncLock:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1000()V
    .registers 0

    .prologue
    .line 47
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->handlePlayerDeletedFromServer()V

    return-void
.end method

.method static synthetic access$1100(Ljava/lang/Integer;)Lcom/onesignal/OneSignalStateSynchronizer$NetworkHandlerThread;
    .registers 2
    .param p0, "x0"    # Ljava/lang/Integer;

    .prologue
    .line 47
    invoke-static {p0}, Lcom/onesignal/OneSignalStateSynchronizer;->getNetworkHandlerThread(Ljava/lang/Integer;)Lcom/onesignal/OneSignalStateSynchronizer$NetworkHandlerThread;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200()Lcom/onesignal/OneSignalStateSynchronizer$UserState;
    .registers 1

    .prologue
    .line 47
    sget-object v0, Lcom/onesignal/OneSignalStateSynchronizer;->currentUserState:Lcom/onesignal/OneSignalStateSynchronizer$UserState;

    return-object v0
.end method

.method static synthetic access$1302(Z)Z
    .registers 1
    .param p0, "x0"    # Z

    .prologue
    .line 47
    sput-boolean p0, Lcom/onesignal/OneSignalStateSynchronizer;->waitingForSessionResponse:Z

    return p0
.end method

.method static synthetic access$1402(Z)Z
    .registers 1
    .param p0, "x0"    # Z

    .prologue
    .line 47
    sput-boolean p0, Lcom/onesignal/OneSignalStateSynchronizer;->nextSyncIsSession:Z

    return p0
.end method

.method static synthetic access$1702(Z)Z
    .registers 1
    .param p0, "x0"    # Z

    .prologue
    .line 47
    sput-boolean p0, Lcom/onesignal/OneSignalStateSynchronizer;->serverSuccess:Z

    return p0
.end method

.method static synthetic access$1800()Lcom/onesignal/OneSignalStateSynchronizer$UserState;
    .registers 1

    .prologue
    .line 47
    sget-object v0, Lcom/onesignal/OneSignalStateSynchronizer;->toSyncUserState:Lcom/onesignal/OneSignalStateSynchronizer$UserState;

    return-object v0
.end method

.method static synthetic access$300()Ljava/util/Set;
    .registers 1

    .prologue
    .line 47
    sget-object v0, Lcom/onesignal/OneSignalStateSynchronizer;->LOCATION_FIELDS_SET:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$400(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/util/Set;)Lorg/json/JSONObject;
    .registers 5
    .param p0, "x0"    # Lorg/json/JSONObject;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Lorg/json/JSONObject;
    .param p3, "x3"    # Ljava/util/Set;

    .prologue
    .line 47
    invoke-static {p0, p1, p2, p3}, Lcom/onesignal/OneSignalStateSynchronizer;->generateJsonDiff(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/util/Set;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500()Landroid/content/Context;
    .registers 1

    .prologue
    .line 47
    sget-object v0, Lcom/onesignal/OneSignalStateSynchronizer;->appContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600()Ljava/lang/Object;
    .registers 1

    .prologue
    .line 47
    sget-object v0, Lcom/onesignal/OneSignalStateSynchronizer;->syncLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$700(Lorg/json/JSONArray;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lorg/json/JSONArray;

    .prologue
    .line 47
    invoke-static {p0}, Lcom/onesignal/OneSignalStateSynchronizer;->toStringNE(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(ILjava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .param p0, "x0"    # I
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-static {p0, p1, p2}, Lcom/onesignal/OneSignalStateSynchronizer;->response400WithErrorsContaining(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static clearLocation()V
    .registers 1

    .prologue
    .line 229
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->getToSyncUserState()Lcom/onesignal/OneSignalStateSynchronizer$UserState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->clearLocation()V

    .line 230
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->getToSyncUserState()Lcom/onesignal/OneSignalStateSynchronizer$UserState;

    move-result-object v0

    # invokes: Lcom/onesignal/OneSignalStateSynchronizer$UserState;->persistState()V
    invoke-static {v0}, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->access$200(Lcom/onesignal/OneSignalStateSynchronizer$UserState;)V

    .line 231
    return-void
.end method

.method private static generateJsonDiff(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/util/Set;)Lorg/json/JSONObject;
    .registers 6
    .param p0, "cur"    # Lorg/json/JSONObject;
    .param p1, "changedTo"    # Lorg/json/JSONObject;
    .param p2, "baseOutput"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Lorg/json/JSONObject;",
            "Lorg/json/JSONObject;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .prologue
    .line 76
    .local p3, "includeFields":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v1, Lcom/onesignal/OneSignalStateSynchronizer;->syncLock:Ljava/lang/Object;

    monitor-enter v1

    .line 77
    :try_start_3
    invoke-static {p0, p1, p2, p3}, Lcom/onesignal/OneSignalStateSynchronizer;->synchronizedGenerateJsonDiff(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/util/Set;)Lorg/json/JSONObject;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 78
    :catchall_9
    move-exception v0

    monitor-exit v1
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v0
.end method

.method private static getNetworkHandlerThread(Ljava/lang/Integer;)Lcom/onesignal/OneSignalStateSynchronizer$NetworkHandlerThread;
    .registers 5
    .param p0, "type"    # Ljava/lang/Integer;

    .prologue
    .line 668
    sget-object v1, Lcom/onesignal/OneSignalStateSynchronizer;->networkHandlerSyncLock:Ljava/lang/Object;

    monitor-enter v1

    .line 669
    :try_start_3
    sget-object v0, Lcom/onesignal/OneSignalStateSynchronizer;->networkHandlerThreads:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 670
    sget-object v0, Lcom/onesignal/OneSignalStateSynchronizer;->networkHandlerThreads:Ljava/util/HashMap;

    new-instance v2, Lcom/onesignal/OneSignalStateSynchronizer$NetworkHandlerThread;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {v2, v3}, Lcom/onesignal/OneSignalStateSynchronizer$NetworkHandlerThread;-><init>(I)V

    invoke-virtual {v0, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 671
    :cond_19
    sget-object v0, Lcom/onesignal/OneSignalStateSynchronizer;->networkHandlerThreads:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onesignal/OneSignalStateSynchronizer$NetworkHandlerThread;

    monitor-exit v1

    return-object v0

    .line 672
    :catchall_23
    move-exception v0

    monitor-exit v1
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_23

    throw v0
.end method

.method static getNewUserState()Lcom/onesignal/OneSignalStateSynchronizer$UserState;
    .registers 5

    .prologue
    .line 565
    new-instance v0, Lcom/onesignal/OneSignalStateSynchronizer$UserState;

    new-instance v1, Lcom/onesignal/OneSignalStateSynchronizer;

    invoke-direct {v1}, Lcom/onesignal/OneSignalStateSynchronizer;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "nonPersist"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/onesignal/OneSignalStateSynchronizer$UserState;-><init>(Lcom/onesignal/OneSignalStateSynchronizer;Ljava/lang/String;ZLcom/onesignal/OneSignalStateSynchronizer$1;)V

    return-object v0
.end method

.method static getRegistrationId()Ljava/lang/String;
    .registers 3

    .prologue
    .line 761
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->getToSyncUserState()Lcom/onesignal/OneSignalStateSynchronizer$UserState;

    move-result-object v0

    iget-object v0, v0, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->syncValues:Lorg/json/JSONObject;

    const-string v1, "identifier"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getSubscribed()Z
    .registers 1

    .prologue
    .line 756
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->getToSyncUserState()Lcom/onesignal/OneSignalStateSynchronizer$UserState;

    move-result-object v0

    # invokes: Lcom/onesignal/OneSignalStateSynchronizer$UserState;->getNotificationTypes()I
    invoke-static {v0}, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->access$1600(Lcom/onesignal/OneSignalStateSynchronizer$UserState;)I

    move-result v0

    if-lez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method static getTags(Z)Lcom/onesignal/OneSignalStateSynchronizer$GetTagsResult;
    .registers 7
    .param p0, "fromServer"    # Z

    .prologue
    .line 775
    if-eqz p0, :cond_2f

    .line 776
    invoke-static {}, Lcom/onesignal/OneSignal;->getUserId()Ljava/lang/String;

    move-result-object v1

    .line 777
    .local v1, "userId":Ljava/lang/String;
    invoke-static {}, Lcom/onesignal/OneSignal;->getSavedAppId()Ljava/lang/String;

    move-result-object v0

    .line 779
    .local v0, "appId":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "players/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "?app_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/onesignal/OneSignalStateSynchronizer$5;

    invoke-direct {v3}, Lcom/onesignal/OneSignalStateSynchronizer$5;-><init>()V

    invoke-static {v2, v3}, Lcom/onesignal/OneSignalRestClient;->getSync(Ljava/lang/String;Lcom/onesignal/OneSignalRestClient$ResponseHandler;)V

    .line 807
    .end local v0    # "appId":Ljava/lang/String;
    .end local v1    # "userId":Ljava/lang/String;
    :cond_2f
    sget-object v3, Lcom/onesignal/OneSignalStateSynchronizer;->syncLock:Ljava/lang/Object;

    monitor-enter v3

    .line 808
    :try_start_32
    new-instance v2, Lcom/onesignal/OneSignalStateSynchronizer$GetTagsResult;

    sget-boolean v4, Lcom/onesignal/OneSignalStateSynchronizer;->serverSuccess:Z

    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->getToSyncUserState()Lcom/onesignal/OneSignalStateSynchronizer$UserState;

    move-result-object v5

    iget-object v5, v5, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->syncValues:Lorg/json/JSONObject;

    invoke-static {v5}, Lcom/onesignal/OneSignalStateSynchronizer;->getTagsWithoutDeletedKeys(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Lcom/onesignal/OneSignalStateSynchronizer$GetTagsResult;-><init>(ZLorg/json/JSONObject;)V

    monitor-exit v3

    return-object v2

    .line 809
    :catchall_45
    move-exception v2

    monitor-exit v3
    :try_end_47
    .catchall {:try_start_32 .. :try_end_47} :catchall_45

    throw v2
.end method

.method private static getTagsWithoutDeletedKeys(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 8
    .param p0, "jsonObject"    # Lorg/json/JSONObject;

    .prologue
    .line 190
    const-string v5, "tags"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3d

    .line 191
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 193
    .local v3, "toReturn":Lorg/json/JSONObject;
    sget-object v6, Lcom/onesignal/OneSignalStateSynchronizer;->syncLock:Ljava/lang/Object;

    monitor-enter v6

    .line 194
    :try_start_10
    const-string v5, "tags"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 196
    .local v1, "keyValues":Lorg/json/JSONObject;
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 200
    .local v2, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_1a
    :goto_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_38

    .line 201
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_26
    .catchall {:try_start_10 .. :try_end_26} :catchall_3a

    .line 203
    .local v0, "key":Ljava/lang/String;
    :try_start_26
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 204
    .local v4, "value":Ljava/lang/Object;
    const-string v5, ""

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1a

    .line 205
    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_35} :catch_36
    .catchall {:try_start_26 .. :try_end_35} :catchall_3a

    goto :goto_1a

    .line 206
    .end local v4    # "value":Ljava/lang/Object;
    :catch_36
    move-exception v5

    goto :goto_1a

    .line 209
    .end local v0    # "key":Ljava/lang/String;
    :cond_38
    :try_start_38
    monitor-exit v6

    .line 213
    .end local v1    # "keyValues":Lorg/json/JSONObject;
    .end local v2    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v3    # "toReturn":Lorg/json/JSONObject;
    :goto_39
    return-object v3

    .line 210
    .restart local v3    # "toReturn":Lorg/json/JSONObject;
    :catchall_3a
    move-exception v5

    monitor-exit v6
    :try_end_3c
    .catchall {:try_start_38 .. :try_end_3c} :catchall_3a

    throw v5

    .line 213
    .end local v3    # "toReturn":Lorg/json/JSONObject;
    :cond_3d
    const/4 v3, 0x0

    goto :goto_39
.end method

.method private static getToSyncUserState()Lcom/onesignal/OneSignalStateSynchronizer$UserState;
    .registers 6

    .prologue
    .line 56
    sget-object v1, Lcom/onesignal/OneSignalStateSynchronizer;->syncLock:Ljava/lang/Object;

    monitor-enter v1

    .line 57
    :try_start_3
    sget-object v0, Lcom/onesignal/OneSignalStateSynchronizer;->toSyncUserState:Lcom/onesignal/OneSignalStateSynchronizer$UserState;

    if-nez v0, :cond_1a

    .line 58
    new-instance v0, Lcom/onesignal/OneSignalStateSynchronizer$UserState;

    new-instance v2, Lcom/onesignal/OneSignalStateSynchronizer;

    invoke-direct {v2}, Lcom/onesignal/OneSignalStateSynchronizer;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "TOSYNC_STATE"

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/onesignal/OneSignalStateSynchronizer$UserState;-><init>(Lcom/onesignal/OneSignalStateSynchronizer;Ljava/lang/String;ZLcom/onesignal/OneSignalStateSynchronizer$1;)V

    sput-object v0, Lcom/onesignal/OneSignalStateSynchronizer;->toSyncUserState:Lcom/onesignal/OneSignalStateSynchronizer$UserState;

    .line 59
    :cond_1a
    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_1e

    .line 61
    sget-object v0, Lcom/onesignal/OneSignalStateSynchronizer;->toSyncUserState:Lcom/onesignal/OneSignalStateSynchronizer$UserState;

    return-object v0

    .line 59
    :catchall_1e
    move-exception v0

    :try_start_1f
    monitor-exit v1
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    throw v0
.end method

.method private static getUserStateForModification()Lcom/onesignal/OneSignalStateSynchronizer$UserState;
    .registers 2

    .prologue
    .line 676
    sget-object v0, Lcom/onesignal/OneSignalStateSynchronizer;->toSyncUserState:Lcom/onesignal/OneSignalStateSynchronizer$UserState;

    if-nez v0, :cond_e

    .line 677
    sget-object v0, Lcom/onesignal/OneSignalStateSynchronizer;->currentUserState:Lcom/onesignal/OneSignalStateSynchronizer$UserState;

    const-string v1, "TOSYNC_STATE"

    # invokes: Lcom/onesignal/OneSignalStateSynchronizer$UserState;->deepClone(Ljava/lang/String;)Lcom/onesignal/OneSignalStateSynchronizer$UserState;
    invoke-static {v0, v1}, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->access$1500(Lcom/onesignal/OneSignalStateSynchronizer$UserState;Ljava/lang/String;)Lcom/onesignal/OneSignalStateSynchronizer$UserState;

    move-result-object v0

    sput-object v0, Lcom/onesignal/OneSignalStateSynchronizer;->toSyncUserState:Lcom/onesignal/OneSignalStateSynchronizer$UserState;

    .line 679
    :cond_e
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->postNewSyncUserState()V

    .line 681
    sget-object v0, Lcom/onesignal/OneSignalStateSynchronizer;->toSyncUserState:Lcom/onesignal/OneSignalStateSynchronizer$UserState;

    return-object v0
.end method

.method static getUserSubscribePreference()Z
    .registers 3

    .prologue
    .line 739
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->getToSyncUserState()Lcom/onesignal/OneSignalStateSynchronizer$UserState;

    move-result-object v0

    iget-object v0, v0, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->dependValues:Lorg/json/JSONObject;

    const-string v1, "userSubscribePref"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static handleJsonArray(Ljava/lang/String;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONObject;)V
    .registers 12
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "newArray"    # Lorg/json/JSONArray;
    .param p2, "curArray"    # Lorg/json/JSONArray;
    .param p3, "output"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 147
    const-string v6, "_a"

    invoke-virtual {p0, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_10

    const-string v6, "_d"

    invoke-virtual {p0, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_14

    .line 148
    :cond_10
    invoke-virtual {p3, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 176
    :cond_13
    :goto_13
    return-void

    .line 152
    :cond_14
    invoke-static {p1}, Lcom/onesignal/OneSignalStateSynchronizer;->toStringNE(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v0

    .line 154
    .local v0, "arrayStr":Ljava/lang/String;
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 155
    .local v4, "newOutArray":Lorg/json/JSONArray;
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 156
    .local v5, "remOutArray":Lorg/json/JSONArray;
    if-nez p2, :cond_40

    const/4 v2, 0x0

    .line 158
    .local v2, "curArrayStr":Ljava/lang/String;
    :goto_25
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_26
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v3, v6, :cond_45

    .line 159
    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 160
    .local v1, "arrayValue":Ljava/lang/String;
    if-eqz p2, :cond_3a

    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3d

    .line 161
    :cond_3a
    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 158
    :cond_3d
    add-int/lit8 v3, v3, 0x1

    goto :goto_26

    .line 156
    .end local v1    # "arrayValue":Ljava/lang/String;
    .end local v2    # "curArrayStr":Ljava/lang/String;
    .end local v3    # "i":I
    :cond_40
    invoke-static {p2}, Lcom/onesignal/OneSignalStateSynchronizer;->toStringNE(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v2

    goto :goto_25

    .line 164
    .restart local v2    # "curArrayStr":Ljava/lang/String;
    .restart local v3    # "i":I
    :cond_45
    if-eqz p2, :cond_5e

    .line 165
    const/4 v3, 0x0

    :goto_48
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v3, v6, :cond_5e

    .line 166
    invoke-virtual {p2, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 167
    .restart local v1    # "arrayValue":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5b

    .line 168
    invoke-virtual {v5, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 165
    :cond_5b
    add-int/lit8 v3, v3, 0x1

    goto :goto_48

    .line 172
    .end local v1    # "arrayValue":Ljava/lang/String;
    :cond_5e
    invoke-virtual {v4}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "[]"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_80

    .line 173
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_a"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 174
    :cond_80
    invoke-virtual {v5}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "[]"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_13

    .line 175
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_d"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_13
.end method

.method private static handlePlayerDeletedFromServer()V
    .registers 1

    .prologue
    .line 821
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->resetCurrentState()V

    .line 822
    const/4 v0, 0x1

    sput-boolean v0, Lcom/onesignal/OneSignalStateSynchronizer;->nextSyncIsSession:Z

    .line 823
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->postNewSyncUserState()V

    .line 824
    return-void
.end method

.method private static hexDigest(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "digestInstance"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 716
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 717
    .local v1, "digest":Ljava/security/MessageDigest;
    const-string v5, "UTF-8"

    invoke-virtual {p0, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/security/MessageDigest;->update([B)V

    .line 718
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v4

    .line 720
    .local v4, "messageDigest":[B
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 721
    .local v3, "hexString":Ljava/lang/StringBuilder;
    array-length v6, v4

    const/4 v5, 0x0

    :goto_18
    if-ge v5, v6, :cond_43

    aget-byte v0, v4, v5

    .line 722
    .local v0, "aMessageDigest":B
    and-int/lit16 v7, v0, 0xff

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 723
    .local v2, "h":Ljava/lang/String;
    :goto_22
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x2

    if-ge v7, v8, :cond_3d

    .line 724
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "0"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_22

    .line 725
    :cond_3d
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 721
    add-int/lit8 v5, v5, 0x1

    goto :goto_18

    .line 727
    .end local v0    # "aMessageDigest":B
    .end local v2    # "h":Ljava/lang/String;
    :cond_43
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method static initUserState(Landroid/content/Context;)V
    .registers 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 553
    sput-object p0, Lcom/onesignal/OneSignalStateSynchronizer;->appContext:Landroid/content/Context;

    .line 555
    sget-object v1, Lcom/onesignal/OneSignalStateSynchronizer;->syncLock:Ljava/lang/Object;

    monitor-enter v1

    .line 556
    :try_start_5
    sget-object v0, Lcom/onesignal/OneSignalStateSynchronizer;->currentUserState:Lcom/onesignal/OneSignalStateSynchronizer$UserState;

    if-nez v0, :cond_1c

    .line 557
    new-instance v0, Lcom/onesignal/OneSignalStateSynchronizer$UserState;

    new-instance v2, Lcom/onesignal/OneSignalStateSynchronizer;

    invoke-direct {v2}, Lcom/onesignal/OneSignalStateSynchronizer;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "CURRENT_STATE"

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/onesignal/OneSignalStateSynchronizer$UserState;-><init>(Lcom/onesignal/OneSignalStateSynchronizer;Ljava/lang/String;ZLcom/onesignal/OneSignalStateSynchronizer$1;)V

    sput-object v0, Lcom/onesignal/OneSignalStateSynchronizer;->currentUserState:Lcom/onesignal/OneSignalStateSynchronizer$UserState;

    .line 559
    :cond_1c
    sget-object v0, Lcom/onesignal/OneSignalStateSynchronizer;->toSyncUserState:Lcom/onesignal/OneSignalStateSynchronizer$UserState;

    if-nez v0, :cond_33

    .line 560
    new-instance v0, Lcom/onesignal/OneSignalStateSynchronizer$UserState;

    new-instance v2, Lcom/onesignal/OneSignalStateSynchronizer;

    invoke-direct {v2}, Lcom/onesignal/OneSignalStateSynchronizer;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "TOSYNC_STATE"

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/onesignal/OneSignalStateSynchronizer$UserState;-><init>(Lcom/onesignal/OneSignalStateSynchronizer;Ljava/lang/String;ZLcom/onesignal/OneSignalStateSynchronizer$1;)V

    sput-object v0, Lcom/onesignal/OneSignalStateSynchronizer;->toSyncUserState:Lcom/onesignal/OneSignalStateSynchronizer$UserState;

    .line 561
    :cond_33
    monitor-exit v1

    .line 562
    return-void

    .line 561
    :catchall_35
    move-exception v0

    monitor-exit v1
    :try_end_37
    .catchall {:try_start_5 .. :try_end_37} :catchall_35

    throw v0
.end method

.method private static isSessionCall()Z
    .registers 2

    .prologue
    .line 569
    invoke-static {}, Lcom/onesignal/OneSignal;->getUserId()Ljava/lang/String;

    move-result-object v0

    .line 570
    .local v0, "userId":Ljava/lang/String;
    if-eqz v0, :cond_e

    sget-boolean v1, Lcom/onesignal/OneSignalStateSynchronizer;->nextSyncIsSession:Z

    if-eqz v1, :cond_10

    sget-boolean v1, Lcom/onesignal/OneSignalStateSynchronizer;->waitingForSessionResponse:Z

    if-nez v1, :cond_10

    :cond_e
    const/4 v1, 0x1

    :goto_f
    return v1

    :cond_10
    const/4 v1, 0x0

    goto :goto_f
.end method

.method private static postNewSyncUserState()V
    .registers 1

    .prologue
    .line 685
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/onesignal/OneSignalStateSynchronizer;->getNetworkHandlerThread(Ljava/lang/Integer;)Lcom/onesignal/OneSignalStateSynchronizer$NetworkHandlerThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onesignal/OneSignalStateSynchronizer$NetworkHandlerThread;->runNewJob()V

    .line 686
    return-void
.end method

.method static postUpdate(Lcom/onesignal/OneSignalStateSynchronizer$UserState;Z)V
    .registers 6
    .param p0, "postSession"    # Lcom/onesignal/OneSignalStateSynchronizer$UserState;
    .param p1, "isSession"    # Z

    .prologue
    const/4 v3, 0x0

    .line 689
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->getUserStateForModification()Lcom/onesignal/OneSignalStateSynchronizer$UserState;

    move-result-object v2

    iget-object v1, v2, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->syncValues:Lorg/json/JSONObject;

    .line 690
    .local v1, "toSync":Lorg/json/JSONObject;
    iget-object v2, p0, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->syncValues:Lorg/json/JSONObject;

    invoke-static {v1, v2, v1, v3}, Lcom/onesignal/OneSignalStateSynchronizer;->generateJsonDiff(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/util/Set;)Lorg/json/JSONObject;

    .line 691
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->getUserStateForModification()Lcom/onesignal/OneSignalStateSynchronizer$UserState;

    move-result-object v2

    iget-object v0, v2, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->dependValues:Lorg/json/JSONObject;

    .line 692
    .local v0, "dependValues":Lorg/json/JSONObject;
    iget-object v2, p0, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->dependValues:Lorg/json/JSONObject;

    invoke-static {v0, v2, v0, v3}, Lcom/onesignal/OneSignalStateSynchronizer;->generateJsonDiff(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/util/Set;)Lorg/json/JSONObject;

    .line 694
    sget-boolean v2, Lcom/onesignal/OneSignalStateSynchronizer;->nextSyncIsSession:Z

    if-nez v2, :cond_23

    if-nez p1, :cond_23

    invoke-static {}, Lcom/onesignal/OneSignal;->getUserId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_27

    :cond_23
    const/4 v2, 0x1

    :goto_24
    sput-boolean v2, Lcom/onesignal/OneSignalStateSynchronizer;->nextSyncIsSession:Z

    .line 695
    return-void

    .line 694
    :cond_27
    const/4 v2, 0x0

    goto :goto_24
.end method

.method static resetCurrentState()V
    .registers 2

    .prologue
    .line 813
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/onesignal/OneSignal;->saveUserId(Ljava/lang/String;)V

    .line 815
    sget-object v0, Lcom/onesignal/OneSignalStateSynchronizer;->currentUserState:Lcom/onesignal/OneSignalStateSynchronizer$UserState;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iput-object v1, v0, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->syncValues:Lorg/json/JSONObject;

    .line 816
    sget-object v0, Lcom/onesignal/OneSignalStateSynchronizer;->currentUserState:Lcom/onesignal/OneSignalStateSynchronizer$UserState;

    # invokes: Lcom/onesignal/OneSignalStateSynchronizer$UserState;->persistState()V
    invoke-static {v0}, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->access$200(Lcom/onesignal/OneSignalStateSynchronizer$UserState;)V

    .line 817
    const-wide/16 v0, -0xe4c

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->setLastSessionTime(J)V

    .line 818
    return-void
.end method

.method private static response400WithErrorsContaining(ILjava/lang/String;Ljava/lang/String;)Z
    .registers 7
    .param p0, "statusCode"    # I
    .param p1, "response"    # Ljava/lang/String;
    .param p2, "contains"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 655
    const/16 v3, 0x190

    if-ne p0, v3, :cond_21

    if-eqz p1, :cond_21

    .line 657
    :try_start_7
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 658
    .local v0, "responseJson":Lorg/json/JSONObject;
    const-string v3, "errors"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_21

    const-string v3, "errors"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_1d} :catch_22

    move-result v3

    if-eqz v3, :cond_21

    const/4 v2, 0x1

    .line 664
    .end local v0    # "responseJson":Lorg/json/JSONObject;
    :cond_21
    :goto_21
    return v2

    .line 659
    :catch_22
    move-exception v1

    .line 660
    .local v1, "t":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_21
.end method

.method static sendTags(Lorg/json/JSONObject;)V
    .registers 5
    .param p0, "newTags"    # Lorg/json/JSONObject;

    .prologue
    .line 698
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->getUserStateForModification()Lcom/onesignal/OneSignalStateSynchronizer$UserState;

    move-result-object v2

    iget-object v1, v2, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->syncValues:Lorg/json/JSONObject;

    .line 700
    .local v1, "userStateTags":Lorg/json/JSONObject;
    :try_start_6
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "tags"

    invoke-virtual {v2, v3, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v1, v3}, Lcom/onesignal/OneSignalStateSynchronizer;->generateJsonDiff(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/util/Set;)Lorg/json/JSONObject;
    :try_end_15
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_15} :catch_16

    .line 702
    :goto_15
    return-void

    .line 701
    :catch_16
    move-exception v0

    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_15
.end method

.method static setPermission(Z)V
    .registers 4
    .param p0, "enable"    # Z

    .prologue
    .line 744
    :try_start_0
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->getUserStateForModification()Lcom/onesignal/OneSignalStateSynchronizer$UserState;

    move-result-object v1

    iget-object v1, v1, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->dependValues:Lorg/json/JSONObject;

    const-string v2, "androidPermission"

    invoke-virtual {v1, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_b
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_b} :catch_c

    .line 748
    :goto_b
    return-void

    .line 745
    :catch_c
    move-exception v0

    .line 746
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_b
.end method

.method static setSubscription(Z)V
    .registers 4
    .param p0, "enable"    # Z

    .prologue
    .line 732
    :try_start_0
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->getUserStateForModification()Lcom/onesignal/OneSignalStateSynchronizer$UserState;

    move-result-object v1

    iget-object v1, v1, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->dependValues:Lorg/json/JSONObject;

    const-string v2, "userSubscribePref"

    invoke-virtual {v1, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_b
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_b} :catch_c

    .line 736
    :goto_b
    return-void

    .line 733
    :catch_c
    move-exception v0

    .line 734
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_b
.end method

.method static stopAndPersist()Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 217
    sget-object v2, Lcom/onesignal/OneSignalStateSynchronizer;->networkHandlerThreads:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v0, "handlerThread":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/onesignal/OneSignalStateSynchronizer$NetworkHandlerThread;>;"
    :goto_b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "handlerThread":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/onesignal/OneSignalStateSynchronizer$NetworkHandlerThread;>;"
    check-cast v0, Ljava/util/Map$Entry;

    .line 218
    .restart local v0    # "handlerThread":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/onesignal/OneSignalStateSynchronizer$NetworkHandlerThread;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onesignal/OneSignalStateSynchronizer$NetworkHandlerThread;

    invoke-virtual {v2}, Lcom/onesignal/OneSignalStateSynchronizer$NetworkHandlerThread;->stopScheduledRunnable()V

    goto :goto_b

    .line 220
    :cond_21
    sget-object v2, Lcom/onesignal/OneSignalStateSynchronizer;->toSyncUserState:Lcom/onesignal/OneSignalStateSynchronizer$UserState;

    if-eqz v2, :cond_39

    .line 221
    sget-object v2, Lcom/onesignal/OneSignalStateSynchronizer;->currentUserState:Lcom/onesignal/OneSignalStateSynchronizer$UserState;

    sget-object v3, Lcom/onesignal/OneSignalStateSynchronizer;->toSyncUserState:Lcom/onesignal/OneSignalStateSynchronizer$UserState;

    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->isSessionCall()Z

    move-result v4

    # invokes: Lcom/onesignal/OneSignalStateSynchronizer$UserState;->generateJsonDiff(Lcom/onesignal/OneSignalStateSynchronizer$UserState;Z)Lorg/json/JSONObject;
    invoke-static {v2, v3, v4}, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->access$100(Lcom/onesignal/OneSignalStateSynchronizer$UserState;Lcom/onesignal/OneSignalStateSynchronizer$UserState;Z)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_34

    const/4 v1, 0x1

    .line 222
    .local v1, "unSynced":Z
    :cond_34
    sget-object v2, Lcom/onesignal/OneSignalStateSynchronizer;->toSyncUserState:Lcom/onesignal/OneSignalStateSynchronizer$UserState;

    # invokes: Lcom/onesignal/OneSignalStateSynchronizer$UserState;->persistState()V
    invoke-static {v2}, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->access$200(Lcom/onesignal/OneSignalStateSynchronizer$UserState;)V

    .line 225
    .end local v1    # "unSynced":Z
    :cond_39
    return v1
.end method

.method static syncHashedEmail(Ljava/lang/String;)V
    .registers 6
    .param p0, "email"    # Ljava/lang/String;

    .prologue
    .line 705
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->getUserStateForModification()Lcom/onesignal/OneSignalStateSynchronizer$UserState;

    move-result-object v3

    iget-object v1, v3, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->syncValues:Lorg/json/JSONObject;

    .line 707
    .local v1, "syncValues":Lorg/json/JSONObject;
    :try_start_6
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 708
    .local v0, "emailFields":Lorg/json/JSONObject;
    const-string v3, "em_m"

    const-string v4, "MD5"

    invoke-static {p0, v4}, Lcom/onesignal/OneSignalStateSynchronizer;->hexDigest(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 709
    const-string v3, "em_s"

    const-string v4, "SHA-1"

    invoke-static {p0, v4}, Lcom/onesignal/OneSignalStateSynchronizer;->hexDigest(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 711
    const/4 v3, 0x0

    invoke-static {v1, v0, v1, v3}, Lcom/onesignal/OneSignalStateSynchronizer;->generateJsonDiff(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/util/Set;)Lorg/json/JSONObject;
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_25} :catch_26

    .line 713
    .end local v0    # "emailFields":Lorg/json/JSONObject;
    :goto_25
    return-void

    .line 712
    :catch_26
    move-exception v2

    .local v2, "t":Ljava/lang/Throwable;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_25
.end method

.method static syncUserState(Z)V
    .registers 9
    .param p0, "fromSyncService"    # Z

    .prologue
    const/4 v7, 0x0

    .line 574
    invoke-static {}, Lcom/onesignal/OneSignal;->getUserId()Ljava/lang/String;

    move-result-object v4

    .line 575
    .local v4, "userId":Ljava/lang/String;
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->isSessionCall()Z

    move-result v1

    .line 577
    .local v1, "isSessionCall":Z
    sget-object v5, Lcom/onesignal/OneSignalStateSynchronizer;->currentUserState:Lcom/onesignal/OneSignalStateSynchronizer$UserState;

    sget-object v6, Lcom/onesignal/OneSignalStateSynchronizer;->toSyncUserState:Lcom/onesignal/OneSignalStateSynchronizer$UserState;

    # invokes: Lcom/onesignal/OneSignalStateSynchronizer$UserState;->generateJsonDiff(Lcom/onesignal/OneSignalStateSynchronizer$UserState;Z)Lorg/json/JSONObject;
    invoke-static {v5, v6, v1}, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->access$100(Lcom/onesignal/OneSignalStateSynchronizer$UserState;Lcom/onesignal/OneSignalStateSynchronizer$UserState;Z)Lorg/json/JSONObject;

    move-result-object v2

    .line 578
    .local v2, "jsonBody":Lorg/json/JSONObject;
    sget-object v5, Lcom/onesignal/OneSignalStateSynchronizer;->currentUserState:Lcom/onesignal/OneSignalStateSynchronizer$UserState;

    iget-object v5, v5, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->dependValues:Lorg/json/JSONObject;

    sget-object v6, Lcom/onesignal/OneSignalStateSynchronizer;->toSyncUserState:Lcom/onesignal/OneSignalStateSynchronizer$UserState;

    iget-object v6, v6, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->dependValues:Lorg/json/JSONObject;

    invoke-static {v5, v6, v7, v7}, Lcom/onesignal/OneSignalStateSynchronizer;->generateJsonDiff(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/util/Set;)Lorg/json/JSONObject;

    move-result-object v0

    .line 580
    .local v0, "dependDiff":Lorg/json/JSONObject;
    if-nez v2, :cond_25

    .line 581
    sget-object v5, Lcom/onesignal/OneSignalStateSynchronizer;->currentUserState:Lcom/onesignal/OneSignalStateSynchronizer$UserState;

    # invokes: Lcom/onesignal/OneSignalStateSynchronizer$UserState;->persistStateAfterSync(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    invoke-static {v5, v0, v7}, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->access$800(Lcom/onesignal/OneSignalStateSynchronizer$UserState;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 652
    :cond_24
    :goto_24
    return-void

    .line 584
    :cond_25
    sget-object v5, Lcom/onesignal/OneSignalStateSynchronizer;->toSyncUserState:Lcom/onesignal/OneSignalStateSynchronizer$UserState;

    # invokes: Lcom/onesignal/OneSignalStateSynchronizer$UserState;->persistState()V
    invoke-static {v5}, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->access$200(Lcom/onesignal/OneSignalStateSynchronizer$UserState;)V

    .line 587
    if-nez v4, :cond_30

    sget-boolean v5, Lcom/onesignal/OneSignalStateSynchronizer;->nextSyncIsSession:Z

    if-eqz v5, :cond_24

    .line 590
    :cond_30
    if-eqz v1, :cond_34

    if-eqz p0, :cond_50

    .line 591
    :cond_34
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "players/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/onesignal/OneSignalStateSynchronizer$3;

    invoke-direct {v6, v0, v2}, Lcom/onesignal/OneSignalStateSynchronizer$3;-><init>(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    invoke-static {v5, v2, v6}, Lcom/onesignal/OneSignalRestClient;->putSync(Ljava/lang/String;Lorg/json/JSONObject;Lcom/onesignal/OneSignalRestClient$ResponseHandler;)V

    goto :goto_24

    .line 610
    :cond_50
    if-nez v4, :cond_60

    .line 611
    const-string v3, "players"

    .line 615
    .local v3, "urlStr":Ljava/lang/String;
    :goto_54
    const/4 v5, 0x1

    sput-boolean v5, Lcom/onesignal/OneSignalStateSynchronizer;->waitingForSessionResponse:Z

    .line 616
    new-instance v5, Lcom/onesignal/OneSignalStateSynchronizer$4;

    invoke-direct {v5, v0, v2}, Lcom/onesignal/OneSignalStateSynchronizer$4;-><init>(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    invoke-static {v3, v2, v5}, Lcom/onesignal/OneSignalRestClient;->postSync(Ljava/lang/String;Lorg/json/JSONObject;Lcom/onesignal/OneSignalRestClient$ResponseHandler;)V

    goto :goto_24

    .line 613
    .end local v3    # "urlStr":Ljava/lang/String;
    :cond_60
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "players/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/on_session"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "urlStr":Ljava/lang/String;
    goto :goto_54
.end method

.method private static synchronizedGenerateJsonDiff(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/util/Set;)Lorg/json/JSONObject;
    .registers 20
    .param p0, "cur"    # Lorg/json/JSONObject;
    .param p1, "changedTo"    # Lorg/json/JSONObject;
    .param p2, "baseOutput"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Lorg/json/JSONObject;",
            "Lorg/json/JSONObject;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .prologue
    .line 82
    .local p3, "includeFields":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez p0, :cond_5

    .line 83
    const/16 p2, 0x0

    .line 143
    .end local p2    # "baseOutput":Lorg/json/JSONObject;
    :cond_4
    :goto_4
    return-object p2

    .line 84
    .restart local p2    # "baseOutput":Lorg/json/JSONObject;
    :cond_5
    if-eqz p1, :cond_4

    .line 87
    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    .line 92
    .local v5, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    if-eqz p2, :cond_67

    .line 93
    move-object/from16 v7, p2

    .line 97
    .local v7, "output":Lorg/json/JSONObject;
    :cond_f
    :goto_f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_e2

    .line 99
    :try_start_15
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 100
    .local v4, "key":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    .line 102
    .local v10, "value":Ljava/lang/Object;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_bf

    .line 103
    instance-of v11, v10, Lorg/json/JSONObject;

    if-eqz v11, :cond_6d

    .line 104
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 105
    .local v2, "curValue":Lorg/json/JSONObject;
    const/4 v6, 0x0

    .line 106
    .local v6, "outValue":Lorg/json/JSONObject;
    if-eqz p2, :cond_44

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_44

    .line 107
    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 108
    :cond_44
    check-cast v10, Lorg/json/JSONObject;

    .end local v10    # "value":Ljava/lang/Object;
    move-object/from16 v0, p3

    invoke-static {v2, v10, v6, v0}, Lcom/onesignal/OneSignalStateSynchronizer;->synchronizedGenerateJsonDiff(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/util/Set;)Lorg/json/JSONObject;

    move-result-object v8

    .line 109
    .local v8, "returnedJson":Lorg/json/JSONObject;
    invoke-virtual {v8}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    .line 110
    .local v9, "returnedJsonStr":Ljava/lang/String;
    const-string/jumbo v11, "{}"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_f

    .line 111
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_61
    .catch Lorg/json/JSONException; {:try_start_15 .. :try_end_61} :catch_62

    goto :goto_f

    .line 138
    .end local v2    # "curValue":Lorg/json/JSONObject;
    .end local v4    # "key":Ljava/lang/String;
    .end local v6    # "outValue":Lorg/json/JSONObject;
    .end local v8    # "returnedJson":Lorg/json/JSONObject;
    .end local v9    # "returnedJsonStr":Ljava/lang/String;
    :catch_62
    move-exception v3

    .line 139
    .local v3, "e":Lorg/json/JSONException;
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_f

    .line 95
    .end local v3    # "e":Lorg/json/JSONException;
    .end local v7    # "output":Lorg/json/JSONObject;
    :cond_67
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .restart local v7    # "output":Lorg/json/JSONObject;
    goto :goto_f

    .line 113
    .restart local v4    # "key":Ljava/lang/String;
    .restart local v10    # "value":Ljava/lang/Object;
    :cond_6d
    :try_start_6d
    instance-of v11, v10, Lorg/json/JSONArray;

    if-eqz v11, :cond_7d

    .line 114
    check-cast v10, Lorg/json/JSONArray;

    .end local v10    # "value":Ljava/lang/Object;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    invoke-static {v4, v10, v11, v7}, Lcom/onesignal/OneSignalStateSynchronizer;->handleJsonArray(Ljava/lang/String;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONObject;)V

    goto :goto_f

    .line 115
    .restart local v10    # "value":Ljava/lang/Object;
    :cond_7d
    if-eqz p3, :cond_8b

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8b

    .line 116
    invoke-virtual {v7, v4, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_f

    .line 118
    :cond_8b
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 119
    .local v2, "curValue":Ljava/lang/Object;
    invoke-virtual {v10, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_f

    .line 121
    instance-of v11, v2, Ljava/lang/Integer;

    if-eqz v11, :cond_ba

    const-string v11, ""

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_ba

    .line 122
    check-cast v2, Ljava/lang/Number;

    .end local v2    # "curValue":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v12

    move-object v0, v10

    check-cast v0, Ljava/lang/Number;

    move-object v11, v0

    invoke-virtual {v11}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v14

    cmpl-double v11, v12, v14

    if-eqz v11, :cond_f

    .line 123
    invoke-virtual {v7, v4, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_f

    .line 126
    .restart local v2    # "curValue":Ljava/lang/Object;
    :cond_ba
    invoke-virtual {v7, v4, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_f

    .line 131
    .end local v2    # "curValue":Ljava/lang/Object;
    :cond_bf
    instance-of v11, v10, Lorg/json/JSONObject;

    if-eqz v11, :cond_d1

    .line 132
    new-instance v11, Lorg/json/JSONObject;

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_f

    .line 133
    :cond_d1
    instance-of v11, v10, Lorg/json/JSONArray;

    if-eqz v11, :cond_dd

    .line 134
    check-cast v10, Lorg/json/JSONArray;

    .end local v10    # "value":Ljava/lang/Object;
    const/4 v11, 0x0

    invoke-static {v4, v10, v11, v7}, Lcom/onesignal/OneSignalStateSynchronizer;->handleJsonArray(Ljava/lang/String;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONObject;)V

    goto/16 :goto_f

    .line 136
    .restart local v10    # "value":Ljava/lang/Object;
    :cond_dd
    invoke-virtual {v7, v4, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_e0
    .catch Lorg/json/JSONException; {:try_start_6d .. :try_end_e0} :catch_62

    goto/16 :goto_f

    .end local v4    # "key":Ljava/lang/String;
    .end local v10    # "value":Ljava/lang/Object;
    :cond_e2
    move-object/from16 p2, v7

    .line 143
    goto/16 :goto_4
.end method

.method private static toStringNE(Lorg/json/JSONArray;)Ljava/lang/String;
    .registers 5
    .param p0, "jsonArray"    # Lorg/json/JSONArray;

    .prologue
    .line 179
    const-string v1, "["

    .line 182
    .local v1, "strArray":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    :try_start_3
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_2e

    .line 183
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_29} :catch_2d

    move-result-object v1

    .line 182
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 184
    :catch_2d
    move-exception v2

    .line 186
    :cond_2e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method static updateLocation(Lcom/onesignal/LocationGMS$LocationPoint;)V
    .registers 2
    .param p0, "point"    # Lcom/onesignal/LocationGMS$LocationPoint;

    .prologue
    .line 751
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->getUserStateForModification()Lcom/onesignal/OneSignalStateSynchronizer$UserState;

    move-result-object v0

    .line 752
    .local v0, "userState":Lcom/onesignal/OneSignalStateSynchronizer$UserState;
    invoke-virtual {v0, p0}, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->setLocation(Lcom/onesignal/LocationGMS$LocationPoint;)V

    .line 753
    return-void
.end method
