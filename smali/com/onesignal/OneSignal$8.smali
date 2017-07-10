.class final Lcom/onesignal/OneSignal$8;
.super Ljava/lang/Object;
.source "OneSignal.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/OneSignal;->internalFireGetTagsCallback(Lcom/onesignal/OneSignal$GetTagsHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$getTagsHandler:Lcom/onesignal/OneSignal$GetTagsHandler;


# direct methods
.method constructor <init>(Lcom/onesignal/OneSignal$GetTagsHandler;)V
    .registers 2

    .prologue
    .line 949
    iput-object p1, p0, Lcom/onesignal/OneSignal$8;->val$getTagsHandler:Lcom/onesignal/OneSignal$GetTagsHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 952
    # getter for: Lcom/onesignal/OneSignal;->getTagsCall:Z
    invoke-static {}, Lcom/onesignal/OneSignal;->access$2600()Z

    move-result v1

    if-nez v1, :cond_2b

    move v1, v2

    :goto_8
    invoke-static {v1}, Lcom/onesignal/OneSignalStateSynchronizer;->getTags(Z)Lcom/onesignal/OneSignalStateSynchronizer$GetTagsResult;

    move-result-object v0

    .line 953
    .local v0, "tags":Lcom/onesignal/OneSignalStateSynchronizer$GetTagsResult;
    iget-boolean v1, v0, Lcom/onesignal/OneSignalStateSynchronizer$GetTagsResult;->serverSuccess:Z

    if-eqz v1, :cond_13

    # setter for: Lcom/onesignal/OneSignal;->getTagsCall:Z
    invoke-static {v2}, Lcom/onesignal/OneSignal;->access$2602(Z)Z

    .line 954
    :cond_13
    iget-object v1, v0, Lcom/onesignal/OneSignalStateSynchronizer$GetTagsResult;->result:Lorg/json/JSONObject;

    if-eqz v1, :cond_24

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "{}"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 955
    :cond_24
    iget-object v1, p0, Lcom/onesignal/OneSignal$8;->val$getTagsHandler:Lcom/onesignal/OneSignal$GetTagsHandler;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/onesignal/OneSignal$GetTagsHandler;->tagsAvailable(Lorg/json/JSONObject;)V

    .line 958
    :goto_2a
    return-void

    .line 952
    .end local v0    # "tags":Lcom/onesignal/OneSignalStateSynchronizer$GetTagsResult;
    :cond_2b
    const/4 v1, 0x0

    goto :goto_8

    .line 957
    .restart local v0    # "tags":Lcom/onesignal/OneSignalStateSynchronizer$GetTagsResult;
    :cond_2d
    iget-object v1, p0, Lcom/onesignal/OneSignal$8;->val$getTagsHandler:Lcom/onesignal/OneSignal$GetTagsHandler;

    iget-object v2, v0, Lcom/onesignal/OneSignalStateSynchronizer$GetTagsResult;->result:Lorg/json/JSONObject;

    invoke-interface {v1, v2}, Lcom/onesignal/OneSignal$GetTagsHandler;->tagsAvailable(Lorg/json/JSONObject;)V

    goto :goto_2a
.end method
