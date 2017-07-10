.class final Lcom/onesignal/OneSignal$2;
.super Ljava/lang/Object;
.source "OneSignal.java"

# interfaces
.implements Lcom/onesignal/PushRegistrator$RegisteredHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/OneSignal;->registerForPushToken()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 458
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public complete(Ljava/lang/String;I)V
    .registers 6
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "status"    # I

    .prologue
    const/4 v2, -0x6

    const/4 v1, 0x1

    .line 461
    if-ge p2, v1, :cond_2c

    .line 466
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->getRegistrationId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_19

    .line 467
    # getter for: Lcom/onesignal/OneSignal;->subscribableStatus:I
    invoke-static {}, Lcom/onesignal/OneSignal;->access$600()I

    move-result v0

    if-eq v0, v1, :cond_16

    # getter for: Lcom/onesignal/OneSignal;->subscribableStatus:I
    invoke-static {}, Lcom/onesignal/OneSignal;->access$600()I

    move-result v0

    if-ge v0, v2, :cond_19

    .line 468
    :cond_16
    # setter for: Lcom/onesignal/OneSignal;->subscribableStatus:I
    invoke-static {p2}, Lcom/onesignal/OneSignal;->access$602(I)I

    .line 473
    :cond_19
    :goto_19
    # setter for: Lcom/onesignal/OneSignal;->lastRegistrationId:Ljava/lang/String;
    invoke-static {p1}, Lcom/onesignal/OneSignal;->access$702(Ljava/lang/String;)Ljava/lang/String;

    .line 474
    # setter for: Lcom/onesignal/OneSignal;->registerForPushFired:Z
    invoke-static {v1}, Lcom/onesignal/OneSignal;->access$802(Z)Z

    .line 475
    sget-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    # invokes: Lcom/onesignal/OneSignal;->getCurrentSubscriptionState(Landroid/content/Context;)Lcom/onesignal/OSSubscriptionState;
    invoke-static {v0}, Lcom/onesignal/OneSignal;->access$900(Landroid/content/Context;)Lcom/onesignal/OSSubscriptionState;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/onesignal/OSSubscriptionState;->setPushToken(Ljava/lang/String;)V

    .line 476
    # invokes: Lcom/onesignal/OneSignal;->registerUser()V
    invoke-static {}, Lcom/onesignal/OneSignal;->access$500()V

    .line 477
    return-void

    .line 470
    :cond_2c
    # getter for: Lcom/onesignal/OneSignal;->subscribableStatus:I
    invoke-static {}, Lcom/onesignal/OneSignal;->access$600()I

    move-result v0

    if-ge v0, v2, :cond_19

    .line 471
    # setter for: Lcom/onesignal/OneSignal;->subscribableStatus:I
    invoke-static {p2}, Lcom/onesignal/OneSignal;->access$602(I)I

    goto :goto_19
.end method
