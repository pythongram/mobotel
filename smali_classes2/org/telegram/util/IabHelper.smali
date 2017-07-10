.class public Lorg/telegram/util/IabHelper;
.super Ljava/lang/Object;
.source "IabHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/util/IabHelper$OnConsumeMultiFinishedListener;,
        Lorg/telegram/util/IabHelper$OnConsumeFinishedListener;,
        Lorg/telegram/util/IabHelper$QueryInventoryFinishedListener;,
        Lorg/telegram/util/IabHelper$OnIabPurchaseFinishedListener;,
        Lorg/telegram/util/IabHelper$OnIabSetupFinishedListener;
    }
.end annotation


# static fields
.field public static final BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:I = 0x3

.field public static final BILLING_RESPONSE_RESULT_DEVELOPER_ERROR:I = 0x5

.field public static final BILLING_RESPONSE_RESULT_ERROR:I = 0x6

.field public static final BILLING_RESPONSE_RESULT_ITEM_ALREADY_OWNED:I = 0x7

.field public static final BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED:I = 0x8

.field public static final BILLING_RESPONSE_RESULT_ITEM_UNAVAILABLE:I = 0x4

.field public static final BILLING_RESPONSE_RESULT_OK:I = 0x0

.field public static final BILLING_RESPONSE_RESULT_USER_CANCELED:I = 0x1

.field public static final GET_SKU_DETAILS_ITEM_LIST:Ljava/lang/String; = "ITEM_ID_LIST"

.field public static final GET_SKU_DETAILS_ITEM_TYPE_LIST:Ljava/lang/String; = "ITEM_TYPE_LIST"

.field public static final IABHELPER_BAD_RESPONSE:I = -0x3ea

.field public static final IABHELPER_ERROR_BASE:I = -0x3e8

.field public static final IABHELPER_INVALID_CONSUMPTION:I = -0x3f2

.field public static final IABHELPER_MISSING_TOKEN:I = -0x3ef

.field public static final IABHELPER_REMOTE_EXCEPTION:I = -0x3e9

.field public static final IABHELPER_SEND_INTENT_FAILED:I = -0x3ec

.field public static final IABHELPER_SUBSCRIPTIONS_NOT_AVAILABLE:I = -0x3f1

.field public static final IABHELPER_UNKNOWN_ERROR:I = -0x3f0

.field public static final IABHELPER_UNKNOWN_PURCHASE_RESPONSE:I = -0x3ee

.field public static final IABHELPER_USER_CANCELLED:I = -0x3ed

.field public static final IABHELPER_VERIFICATION_FAILED:I = -0x3eb

.field public static final INAPP_CONTINUATION_TOKEN:Ljava/lang/String; = "INAPP_CONTINUATION_TOKEN"

.field public static final ITEM_TYPE_INAPP:Ljava/lang/String; = "inapp"

.field public static final ITEM_TYPE_SUBS:Ljava/lang/String; = "subs"

.field public static final RESPONSE_BUY_INTENT:Ljava/lang/String; = "BUY_INTENT"

.field public static final RESPONSE_CODE:Ljava/lang/String; = "RESPONSE_CODE"

.field public static final RESPONSE_GET_SKU_DETAILS_LIST:Ljava/lang/String; = "DETAILS_LIST"

.field public static final RESPONSE_INAPP_ITEM_LIST:Ljava/lang/String; = "INAPP_PURCHASE_ITEM_LIST"

.field public static final RESPONSE_INAPP_PURCHASE_DATA:Ljava/lang/String; = "INAPP_PURCHASE_DATA"

.field public static final RESPONSE_INAPP_PURCHASE_DATA_LIST:Ljava/lang/String; = "INAPP_PURCHASE_DATA_LIST"

.field public static final RESPONSE_INAPP_SIGNATURE:Ljava/lang/String; = "INAPP_DATA_SIGNATURE"

.field public static final RESPONSE_INAPP_SIGNATURE_LIST:Ljava/lang/String; = "INAPP_DATA_SIGNATURE_LIST"


# instance fields
.field mAsyncInProgress:Z

.field mAsyncOperation:Ljava/lang/String;

.field mContext:Landroid/content/Context;

.field mDebugLog:Z

.field mDebugTag:Ljava/lang/String;

.field mPurchaseListener:Lorg/telegram/util/IabHelper$OnIabPurchaseFinishedListener;

.field mPurchasingItemType:Ljava/lang/String;

.field mRequestCode:I

.field mService:Lcom/android/vending/billing/IInAppBillingService;

.field mServiceConn:Landroid/content/ServiceConnection;

.field mSetupDone:Z

.field mSignatureBase64:Ljava/lang/String;

.field mSubscriptionsSupported:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "base64PublicKey"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-boolean v1, p0, Lorg/telegram/util/IabHelper;->mDebugLog:Z

    .line 28
    const-string v0, "IabHelper"

    iput-object v0, p0, Lorg/telegram/util/IabHelper;->mDebugTag:Ljava/lang/String;

    .line 29
    iput-boolean v1, p0, Lorg/telegram/util/IabHelper;->mSetupDone:Z

    .line 30
    iput-boolean v1, p0, Lorg/telegram/util/IabHelper;->mSubscriptionsSupported:Z

    .line 31
    iput-boolean v1, p0, Lorg/telegram/util/IabHelper;->mAsyncInProgress:Z

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lorg/telegram/util/IabHelper;->mAsyncOperation:Ljava/lang/String;

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/util/IabHelper;->mSignatureBase64:Ljava/lang/String;

    .line 84
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/util/IabHelper;->mContext:Landroid/content/Context;

    .line 85
    iput-object p2, p0, Lorg/telegram/util/IabHelper;->mSignatureBase64:Ljava/lang/String;

    .line 86
    const-string v0, "IAB helper created."

    invoke-virtual {p0, v0}, Lorg/telegram/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method public static getResponseDesc(I)Ljava/lang/String;
    .registers 6
    .param p0, "code"    # I

    .prologue
    .line 494
    const-string v3, "0:OK/1:User Canceled/2:Unknown/3:Billing Unavailable/4:Item unavailable/5:Developer Error/6:Error/7:Item Already Owned/8:Item not owned"

    const-string v4, "/"

    .line 497
    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 498
    .local v0, "iab_msgs":[Ljava/lang/String;
    const-string v3, "0:OK/-1001:Remote exception during initialization/-1002:Bad response received/-1003:Purchase signature verification failed/-1004:Send intent failed/-1005:User cancelled/-1006:Unknown purchase response/-1007:Missing token/-1008:Unknown error/-1009:Subscriptions not available/-1010:Invalid consumption attempt"

    const-string v4, "/"

    .line 507
    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 509
    .local v1, "iabhelper_msgs":[Ljava/lang/String;
    const/16 v3, -0x3e8

    if-gt p0, v3, :cond_36

    .line 510
    rsub-int v2, p0, -0x3e8

    .line 511
    .local v2, "index":I
    if-ltz v2, :cond_1e

    array-length v3, v1

    if-ge v2, v3, :cond_1e

    aget-object v3, v1, v2

    .line 517
    .end local v2    # "index":I
    :goto_1d
    return-object v3

    .line 512
    .restart local v2    # "index":I
    :cond_1e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":Unknown IAB Helper Error"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1d

    .line 514
    .end local v2    # "index":I
    :cond_36
    if-ltz p0, :cond_3b

    array-length v3, v0

    if-lt p0, v3, :cond_53

    .line 515
    :cond_3b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":Unknown"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1d

    .line 517
    :cond_53
    aget-object v3, v0, p0

    goto :goto_1d
.end method


# virtual methods
.method checkSetupDone(Ljava/lang/String;)V
    .registers 5
    .param p1, "operation"    # Ljava/lang/String;

    .prologue
    .line 521
    iget-boolean v0, p0, Lorg/telegram/util/IabHelper;->mSetupDone:Z

    if-nez v0, :cond_39

    .line 522
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal state for operation ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "): IAB helper is not set up."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 523
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IAB helper is not set up. Can\'t perform operation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 525
    :cond_39
    return-void
.end method

.method consume(Lorg/telegram/util/Purchase;)V
    .registers 10
    .param p1, "itemInfo"    # Lorg/telegram/util/Purchase;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/util/IabException;
        }
    .end annotation

    .prologue
    .line 440
    const-string v4, "consume"

    invoke-virtual {p0, v4}, Lorg/telegram/util/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    .line 442
    iget-object v4, p1, Lorg/telegram/util/Purchase;->mItemType:Ljava/lang/String;

    const-string v5, "inapp"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_32

    .line 443
    new-instance v4, Lorg/telegram/util/IabException;

    const/16 v5, -0x3f2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Items of type \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lorg/telegram/util/Purchase;->mItemType:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' can\'t be consumed."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/telegram/util/IabException;-><init>(ILjava/lang/String;)V

    throw v4

    .line 448
    :cond_32
    :try_start_32
    invoke-virtual {p1}, Lorg/telegram/util/Purchase;->getToken()Ljava/lang/String;

    move-result-object v3

    .line 449
    .local v3, "token":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/telegram/util/Purchase;->getSku()Ljava/lang/String;

    move-result-object v2

    .line 450
    .local v2, "sku":Ljava/lang/String;
    if-eqz v3, :cond_44

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a1

    .line 451
    :cond_44
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t consume "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". No token."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/telegram/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 452
    new-instance v4, Lorg/telegram/util/IabException;

    const/16 v5, -0x3ef

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PurchaseInfo is missing token for sku: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/telegram/util/IabException;-><init>(ILjava/lang/String;)V

    throw v4
    :try_end_85
    .catch Landroid/os/RemoteException; {:try_start_32 .. :try_end_85} :catch_85

    .line 466
    .end local v2    # "sku":Ljava/lang/String;
    .end local v3    # "token":Ljava/lang/String;
    :catch_85
    move-exception v0

    .line 467
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v4, Lorg/telegram/util/IabException;

    const/16 v5, -0x3e9

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Remote exception while consuming. PurchaseInfo: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6, v0}, Lorg/telegram/util/IabException;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    throw v4

    .line 456
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v2    # "sku":Ljava/lang/String;
    .restart local v3    # "token":Ljava/lang/String;
    :cond_a1
    :try_start_a1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Consuming sku: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", token: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/telegram/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 457
    iget-object v4, p0, Lorg/telegram/util/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v5, 0x3

    iget-object v6, p0, Lorg/telegram/util/IabHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6, v3}, Lcom/android/vending/billing/IInAppBillingService;->consumePurchase(ILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 458
    .local v1, "response":I
    if-nez v1, :cond_e7

    .line 459
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Successfully consumed sku: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/telegram/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 469
    return-void

    .line 462
    :cond_e7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error consuming consuming sku "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Lorg/telegram/util/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/telegram/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 463
    new-instance v4, Lorg/telegram/util/IabException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error consuming sku "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v1, v5}, Lorg/telegram/util/IabException;-><init>(ILjava/lang/String;)V

    throw v4
    :try_end_124
    .catch Landroid/os/RemoteException; {:try_start_a1 .. :try_end_124} :catch_85
.end method

.method public consumeAsync(Ljava/util/List;Lorg/telegram/util/IabHelper$OnConsumeMultiFinishedListener;)V
    .registers 4
    .param p2, "listener"    # Lorg/telegram/util/IabHelper$OnConsumeMultiFinishedListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/telegram/util/Purchase;",
            ">;",
            "Lorg/telegram/util/IabHelper$OnConsumeMultiFinishedListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 489
    .local p1, "purchases":Ljava/util/List;, "Ljava/util/List<Lorg/telegram/util/Purchase;>;"
    const-string v0, "consume"

    invoke-virtual {p0, v0}, Lorg/telegram/util/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    .line 490
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lorg/telegram/util/IabHelper;->consumeAsyncInternal(Ljava/util/List;Lorg/telegram/util/IabHelper$OnConsumeFinishedListener;Lorg/telegram/util/IabHelper$OnConsumeMultiFinishedListener;)V

    .line 491
    return-void
.end method

.method public consumeAsync(Lorg/telegram/util/Purchase;Lorg/telegram/util/IabHelper$OnConsumeFinishedListener;)V
    .registers 5
    .param p1, "purchase"    # Lorg/telegram/util/Purchase;
    .param p2, "listener"    # Lorg/telegram/util/IabHelper$OnConsumeFinishedListener;

    .prologue
    .line 482
    const-string v1, "consume"

    invoke-virtual {p0, v1}, Lorg/telegram/util/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    .line 483
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 484
    .local v0, "purchases":Ljava/util/List;, "Ljava/util/List<Lorg/telegram/util/Purchase;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 485
    const/4 v1, 0x0

    invoke-virtual {p0, v0, p2, v1}, Lorg/telegram/util/IabHelper;->consumeAsyncInternal(Ljava/util/List;Lorg/telegram/util/IabHelper$OnConsumeFinishedListener;Lorg/telegram/util/IabHelper$OnConsumeMultiFinishedListener;)V

    .line 486
    return-void
.end method

.method consumeAsyncInternal(Ljava/util/List;Lorg/telegram/util/IabHelper$OnConsumeFinishedListener;Lorg/telegram/util/IabHelper$OnConsumeMultiFinishedListener;)V
    .registers 11
    .param p2, "singleListener"    # Lorg/telegram/util/IabHelper$OnConsumeFinishedListener;
    .param p3, "multiListener"    # Lorg/telegram/util/IabHelper$OnConsumeMultiFinishedListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/telegram/util/Purchase;",
            ">;",
            "Lorg/telegram/util/IabHelper$OnConsumeFinishedListener;",
            "Lorg/telegram/util/IabHelper$OnConsumeMultiFinishedListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 679
    .local p1, "purchases":Ljava/util/List;, "Ljava/util/List<Lorg/telegram/util/Purchase;>;"
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    .line 680
    .local v4, "handler":Landroid/os/Handler;
    const-string v0, "consume"

    invoke-virtual {p0, v0}, Lorg/telegram/util/IabHelper;->flagStartAsync(Ljava/lang/String;)V

    .line 681
    new-instance v6, Ljava/lang/Thread;

    new-instance v0, Lorg/telegram/util/IabHelper$3;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/telegram/util/IabHelper$3;-><init>(Lorg/telegram/util/IabHelper;Ljava/util/List;Lorg/telegram/util/IabHelper$OnConsumeFinishedListener;Landroid/os/Handler;Lorg/telegram/util/IabHelper$OnConsumeMultiFinishedListener;)V

    invoke-direct {v6, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 710
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 711
    return-void
.end method

.method public dispose()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 177
    const-string v0, "Disposing."

    invoke-virtual {p0, v0}, Lorg/telegram/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 178
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/util/IabHelper;->mSetupDone:Z

    .line 179
    iget-object v0, p0, Lorg/telegram/util/IabHelper;->mServiceConn:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_23

    .line 180
    const-string v0, "Unbinding from service."

    invoke-virtual {p0, v0}, Lorg/telegram/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 181
    iget-object v0, p0, Lorg/telegram/util/IabHelper;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lorg/telegram/util/IabHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lorg/telegram/util/IabHelper;->mServiceConn:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 182
    :cond_1d
    iput-object v2, p0, Lorg/telegram/util/IabHelper;->mServiceConn:Landroid/content/ServiceConnection;

    .line 183
    iput-object v2, p0, Lorg/telegram/util/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    .line 184
    iput-object v2, p0, Lorg/telegram/util/IabHelper;->mPurchaseListener:Lorg/telegram/util/IabHelper$OnIabPurchaseFinishedListener;

    .line 186
    :cond_23
    return-void
.end method

.method public enableDebugLogging(Z)V
    .registers 2
    .param p1, "enable"    # Z

    .prologue
    .line 94
    iput-boolean p1, p0, Lorg/telegram/util/IabHelper;->mDebugLog:Z

    .line 95
    return-void
.end method

.method public enableDebugLogging(ZLjava/lang/String;)V
    .registers 3
    .param p1, "enable"    # Z
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 90
    iput-boolean p1, p0, Lorg/telegram/util/IabHelper;->mDebugLog:Z

    .line 91
    iput-object p2, p0, Lorg/telegram/util/IabHelper;->mDebugTag:Ljava/lang/String;

    .line 92
    return-void
.end method

.method flagEndAsync()V
    .registers 3

    .prologue
    .line 566
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ending async operation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/util/IabHelper;->mAsyncOperation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 567
    const-string v0, ""

    iput-object v0, p0, Lorg/telegram/util/IabHelper;->mAsyncOperation:Ljava/lang/String;

    .line 568
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/util/IabHelper;->mAsyncInProgress:Z

    .line 569
    return-void
.end method

.method flagStartAsync(Ljava/lang/String;)V
    .registers 5
    .param p1, "operation"    # Ljava/lang/String;

    .prologue
    .line 558
    iget-boolean v0, p0, Lorg/telegram/util/IabHelper;->mAsyncInProgress:Z

    if-eqz v0, :cond_2f

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t start async operation ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") because another async operation("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/util/IabHelper;->mAsyncOperation:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") is in progress."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 560
    :cond_2f
    iput-object p1, p0, Lorg/telegram/util/IabHelper;->mAsyncOperation:Ljava/lang/String;

    .line 561
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/util/IabHelper;->mAsyncInProgress:Z

    .line 562
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Starting async operation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 563
    return-void
.end method

.method getResponseCodeFromBundle(Landroid/os/Bundle;)I
    .registers 6
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    .line 528
    const-string v1, "RESPONSE_CODE"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 529
    .local v0, "o":Ljava/lang/Object;
    if-nez v0, :cond_f

    .line 530
    const-string v1, "Bundle with null response code, assuming OK (known issue)"

    invoke-virtual {p0, v1}, Lorg/telegram/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 531
    const/4 v1, 0x0

    .line 534
    .end local v0    # "o":Ljava/lang/Object;
    :goto_e
    return v1

    .line 533
    .restart local v0    # "o":Ljava/lang/Object;
    :cond_f
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_1a

    check-cast v0, Ljava/lang/Integer;

    .end local v0    # "o":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_e

    .line 534
    .restart local v0    # "o":Ljava/lang/Object;
    :cond_1a
    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_26

    check-cast v0, Ljava/lang/Long;

    .end local v0    # "o":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    long-to-int v1, v2

    goto :goto_e

    .line 536
    .restart local v0    # "o":Ljava/lang/Object;
    :cond_26
    const-string v1, "Unexpected type for bundle response code."

    invoke-virtual {p0, v1}, Lorg/telegram/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 537
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/telegram/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 538
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected type for bundle response code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method getResponseCodeFromIntent(Landroid/content/Intent;)I
    .registers 6
    .param p1, "i"    # Landroid/content/Intent;

    .prologue
    .line 543
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "RESPONSE_CODE"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 544
    .local v0, "o":Ljava/lang/Object;
    if-nez v0, :cond_13

    .line 545
    const-string v1, "Intent with no response code, assuming OK (known issue)"

    invoke-virtual {p0, v1}, Lorg/telegram/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 546
    const/4 v1, 0x0

    .line 549
    .end local v0    # "o":Ljava/lang/Object;
    :goto_12
    return v1

    .line 548
    .restart local v0    # "o":Ljava/lang/Object;
    :cond_13
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_1e

    check-cast v0, Ljava/lang/Integer;

    .end local v0    # "o":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_12

    .line 549
    .restart local v0    # "o":Ljava/lang/Object;
    :cond_1e
    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_2a

    check-cast v0, Ljava/lang/Long;

    .end local v0    # "o":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    long-to-int v1, v2

    goto :goto_12

    .line 551
    .restart local v0    # "o":Ljava/lang/Object;
    :cond_2a
    const-string v1, "Unexpected type for intent response code."

    invoke-virtual {p0, v1}, Lorg/telegram/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 552
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/telegram/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 553
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected type for intent response code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public handleActivityResult(IILandroid/content/Intent;)Z
    .registers 16
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 271
    iget v8, p0, Lorg/telegram/util/IabHelper;->mRequestCode:I

    if-eq p1, v8, :cond_6

    const/4 v8, 0x0

    .line 349
    :goto_5
    return v8

    .line 273
    :cond_6
    const-string v8, "handleActivityResult"

    invoke-virtual {p0, v8}, Lorg/telegram/util/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    .line 276
    invoke-virtual {p0}, Lorg/telegram/util/IabHelper;->flagEndAsync()V

    .line 278
    if-nez p3, :cond_2a

    .line 279
    const-string v8, "Null data in IAB activity result."

    invoke-virtual {p0, v8}, Lorg/telegram/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 280
    new-instance v6, Lorg/telegram/util/IabResult;

    const/16 v8, -0x3ea

    const-string v9, "Null data in IAB result"

    invoke-direct {v6, v8, v9}, Lorg/telegram/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 281
    .local v6, "result":Lorg/telegram/util/IabResult;
    iget-object v8, p0, Lorg/telegram/util/IabHelper;->mPurchaseListener:Lorg/telegram/util/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v8, :cond_28

    iget-object v8, p0, Lorg/telegram/util/IabHelper;->mPurchaseListener:Lorg/telegram/util/IabHelper$OnIabPurchaseFinishedListener;

    const/4 v9, 0x0

    invoke-interface {v8, v6, v9}, Lorg/telegram/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lorg/telegram/util/IabResult;Lorg/telegram/util/Purchase;)V

    .line 282
    :cond_28
    const/4 v8, 0x1

    goto :goto_5

    .line 285
    .end local v6    # "result":Lorg/telegram/util/IabResult;
    :cond_2a
    invoke-virtual {p0, p3}, Lorg/telegram/util/IabHelper;->getResponseCodeFromIntent(Landroid/content/Intent;)I

    move-result v5

    .line 286
    .local v5, "responseCode":I
    const-string v8, "INAPP_PURCHASE_DATA"

    invoke-virtual {p3, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 287
    .local v4, "purchaseData":Ljava/lang/String;
    const-string v8, "INAPP_DATA_SIGNATURE"

    invoke-virtual {p3, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 289
    .local v0, "dataSignature":Ljava/lang/String;
    const/4 v8, -0x1

    if-ne p2, v8, :cond_167

    if-nez v5, :cond_167

    .line 290
    const-string v8, "Successful resultcode from purchase activity."

    invoke-virtual {p0, v8}, Lorg/telegram/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 291
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Purchase data: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lorg/telegram/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 292
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Data signature: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lorg/telegram/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 293
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Extras: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lorg/telegram/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 294
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Expected item type: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lorg/telegram/util/IabHelper;->mPurchasingItemType:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lorg/telegram/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 296
    if-eqz v4, :cond_a6

    if-nez v0, :cond_df

    .line 297
    :cond_a6
    const-string v8, "BUG: either purchaseData or dataSignature is null."

    invoke-virtual {p0, v8}, Lorg/telegram/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 298
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Extras: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lorg/telegram/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 299
    new-instance v6, Lorg/telegram/util/IabResult;

    const/16 v8, -0x3f0

    const-string v9, "IAB returned null purchaseData or dataSignature"

    invoke-direct {v6, v8, v9}, Lorg/telegram/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 300
    .restart local v6    # "result":Lorg/telegram/util/IabResult;
    iget-object v8, p0, Lorg/telegram/util/IabHelper;->mPurchaseListener:Lorg/telegram/util/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v8, :cond_dc

    iget-object v8, p0, Lorg/telegram/util/IabHelper;->mPurchaseListener:Lorg/telegram/util/IabHelper$OnIabPurchaseFinishedListener;

    const/4 v9, 0x0

    invoke-interface {v8, v6, v9}, Lorg/telegram/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lorg/telegram/util/IabResult;Lorg/telegram/util/Purchase;)V

    .line 301
    :cond_dc
    const/4 v8, 0x1

    goto/16 :goto_5

    .line 304
    .end local v6    # "result":Lorg/telegram/util/IabResult;
    :cond_df
    const/4 v2, 0x0

    .line 306
    .local v2, "purchase":Lorg/telegram/util/Purchase;
    :try_start_e0
    new-instance v3, Lorg/telegram/util/Purchase;

    iget-object v8, p0, Lorg/telegram/util/IabHelper;->mPurchasingItemType:Ljava/lang/String;

    invoke-direct {v3, v8, v4, v0}, Lorg/telegram/util/Purchase;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e7
    .catch Lorg/json/JSONException; {:try_start_e0 .. :try_end_e7} :catch_148

    .line 307
    .end local v2    # "purchase":Lorg/telegram/util/Purchase;
    .local v3, "purchase":Lorg/telegram/util/Purchase;
    :try_start_e7
    invoke-virtual {v3}, Lorg/telegram/util/Purchase;->getSku()Ljava/lang/String;

    move-result-object v7

    .line 310
    .local v7, "sku":Ljava/lang/String;
    iget-object v8, p0, Lorg/telegram/util/IabHelper;->mSignatureBase64:Ljava/lang/String;

    invoke-static {v8, v4, v0}, Lorg/telegram/util/Security;->verifyPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_12f

    .line 311
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Purchase signature verification FAILED for sku "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lorg/telegram/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 312
    new-instance v6, Lorg/telegram/util/IabResult;

    const/16 v8, -0x3eb

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Signature verification failed for sku "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v8, v9}, Lorg/telegram/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 313
    .restart local v6    # "result":Lorg/telegram/util/IabResult;
    iget-object v8, p0, Lorg/telegram/util/IabHelper;->mPurchaseListener:Lorg/telegram/util/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v8, :cond_12c

    iget-object v8, p0, Lorg/telegram/util/IabHelper;->mPurchaseListener:Lorg/telegram/util/IabHelper$OnIabPurchaseFinishedListener;

    invoke-interface {v8, v6, v3}, Lorg/telegram/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lorg/telegram/util/IabResult;Lorg/telegram/util/Purchase;)V

    .line 314
    :cond_12c
    const/4 v8, 0x1

    goto/16 :goto_5

    .line 316
    .end local v6    # "result":Lorg/telegram/util/IabResult;
    :cond_12f
    const-string v8, "Purchase signature successfully verified."

    invoke-virtual {p0, v8}, Lorg/telegram/util/IabHelper;->logDebug(Ljava/lang/String;)V
    :try_end_134
    .catch Lorg/json/JSONException; {:try_start_e7 .. :try_end_134} :catch_203

    .line 326
    iget-object v8, p0, Lorg/telegram/util/IabHelper;->mPurchaseListener:Lorg/telegram/util/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v8, :cond_145

    .line 327
    iget-object v8, p0, Lorg/telegram/util/IabHelper;->mPurchaseListener:Lorg/telegram/util/IabHelper$OnIabPurchaseFinishedListener;

    new-instance v9, Lorg/telegram/util/IabResult;

    const/4 v10, 0x0

    const-string v11, "Success"

    invoke-direct {v9, v10, v11}, Lorg/telegram/util/IabResult;-><init>(ILjava/lang/String;)V

    invoke-interface {v8, v9, v3}, Lorg/telegram/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lorg/telegram/util/IabResult;Lorg/telegram/util/Purchase;)V

    .line 349
    .end local v3    # "purchase":Lorg/telegram/util/Purchase;
    .end local v7    # "sku":Ljava/lang/String;
    :cond_145
    :goto_145
    const/4 v8, 0x1

    goto/16 :goto_5

    .line 318
    .restart local v2    # "purchase":Lorg/telegram/util/Purchase;
    :catch_148
    move-exception v1

    .line 319
    .local v1, "e":Lorg/json/JSONException;
    :goto_149
    const-string v8, "Failed to parse purchase data."

    invoke-virtual {p0, v8}, Lorg/telegram/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 320
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 321
    new-instance v6, Lorg/telegram/util/IabResult;

    const/16 v8, -0x3ea

    const-string v9, "Failed to parse purchase data."

    invoke-direct {v6, v8, v9}, Lorg/telegram/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 322
    .restart local v6    # "result":Lorg/telegram/util/IabResult;
    iget-object v8, p0, Lorg/telegram/util/IabHelper;->mPurchaseListener:Lorg/telegram/util/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v8, :cond_164

    iget-object v8, p0, Lorg/telegram/util/IabHelper;->mPurchaseListener:Lorg/telegram/util/IabHelper$OnIabPurchaseFinishedListener;

    const/4 v9, 0x0

    invoke-interface {v8, v6, v9}, Lorg/telegram/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lorg/telegram/util/IabResult;Lorg/telegram/util/Purchase;)V

    .line 323
    :cond_164
    const/4 v8, 0x1

    goto/16 :goto_5

    .line 330
    .end local v1    # "e":Lorg/json/JSONException;
    .end local v2    # "purchase":Lorg/telegram/util/Purchase;
    .end local v6    # "result":Lorg/telegram/util/IabResult;
    :cond_167
    const/4 v8, -0x1

    if-ne p2, v8, :cond_196

    .line 332
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Result code was OK but in-app billing response was not OK: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v5}, Lorg/telegram/util/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lorg/telegram/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 333
    iget-object v8, p0, Lorg/telegram/util/IabHelper;->mPurchaseListener:Lorg/telegram/util/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v8, :cond_145

    .line 334
    new-instance v6, Lorg/telegram/util/IabResult;

    const-string v8, "Problem purchashing item."

    invoke-direct {v6, v5, v8}, Lorg/telegram/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 335
    .restart local v6    # "result":Lorg/telegram/util/IabResult;
    iget-object v8, p0, Lorg/telegram/util/IabHelper;->mPurchaseListener:Lorg/telegram/util/IabHelper$OnIabPurchaseFinishedListener;

    const/4 v9, 0x0

    invoke-interface {v8, v6, v9}, Lorg/telegram/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lorg/telegram/util/IabResult;Lorg/telegram/util/Purchase;)V

    goto :goto_145

    .line 338
    .end local v6    # "result":Lorg/telegram/util/IabResult;
    :cond_196
    if-nez p2, :cond_1c6

    .line 339
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Purchase canceled - Response: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v5}, Lorg/telegram/util/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lorg/telegram/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 340
    new-instance v6, Lorg/telegram/util/IabResult;

    const/16 v8, -0x3ed

    const-string v9, "User canceled."

    invoke-direct {v6, v8, v9}, Lorg/telegram/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 341
    .restart local v6    # "result":Lorg/telegram/util/IabResult;
    iget-object v8, p0, Lorg/telegram/util/IabHelper;->mPurchaseListener:Lorg/telegram/util/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v8, :cond_145

    iget-object v8, p0, Lorg/telegram/util/IabHelper;->mPurchaseListener:Lorg/telegram/util/IabHelper$OnIabPurchaseFinishedListener;

    const/4 v9, 0x0

    invoke-interface {v8, v6, v9}, Lorg/telegram/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lorg/telegram/util/IabResult;Lorg/telegram/util/Purchase;)V

    goto :goto_145

    .line 344
    .end local v6    # "result":Lorg/telegram/util/IabResult;
    :cond_1c6
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Purchase failed. Result code: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ". Response: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 345
    invoke-static {v5}, Lorg/telegram/util/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 344
    invoke-virtual {p0, v8}, Lorg/telegram/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 346
    new-instance v6, Lorg/telegram/util/IabResult;

    const/16 v8, -0x3ee

    const-string v9, "Unknown purchase response."

    invoke-direct {v6, v8, v9}, Lorg/telegram/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 347
    .restart local v6    # "result":Lorg/telegram/util/IabResult;
    iget-object v8, p0, Lorg/telegram/util/IabHelper;->mPurchaseListener:Lorg/telegram/util/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v8, :cond_145

    iget-object v8, p0, Lorg/telegram/util/IabHelper;->mPurchaseListener:Lorg/telegram/util/IabHelper$OnIabPurchaseFinishedListener;

    const/4 v9, 0x0

    invoke-interface {v8, v6, v9}, Lorg/telegram/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lorg/telegram/util/IabResult;Lorg/telegram/util/Purchase;)V

    goto/16 :goto_145

    .line 318
    .end local v6    # "result":Lorg/telegram/util/IabResult;
    .restart local v3    # "purchase":Lorg/telegram/util/Purchase;
    :catch_203
    move-exception v1

    move-object v2, v3

    .end local v3    # "purchase":Lorg/telegram/util/Purchase;
    .restart local v2    # "purchase":Lorg/telegram/util/Purchase;
    goto/16 :goto_149
.end method

.method public launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILorg/telegram/util/IabHelper$OnIabPurchaseFinishedListener;)V
    .registers 11
    .param p1, "act"    # Landroid/app/Activity;
    .param p2, "sku"    # Ljava/lang/String;
    .param p3, "requestCode"    # I
    .param p4, "listener"    # Lorg/telegram/util/IabHelper$OnIabPurchaseFinishedListener;

    .prologue
    .line 200
    const-string v5, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/util/IabHelper;->launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILorg/telegram/util/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V

    .line 201
    return-void
.end method

.method public launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILorg/telegram/util/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V
    .registers 13
    .param p1, "act"    # Landroid/app/Activity;
    .param p2, "sku"    # Ljava/lang/String;
    .param p3, "requestCode"    # I
    .param p4, "listener"    # Lorg/telegram/util/IabHelper$OnIabPurchaseFinishedListener;
    .param p5, "extraData"    # Ljava/lang/String;

    .prologue
    .line 205
    const-string v3, "inapp"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/util/IabHelper;->launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILorg/telegram/util/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V

    .line 206
    return-void
.end method

.method public launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILorg/telegram/util/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V
    .registers 21
    .param p1, "act"    # Landroid/app/Activity;
    .param p2, "sku"    # Ljava/lang/String;
    .param p3, "itemType"    # Ljava/lang/String;
    .param p4, "requestCode"    # I
    .param p5, "listener"    # Lorg/telegram/util/IabHelper$OnIabPurchaseFinishedListener;
    .param p6, "extraData"    # Ljava/lang/String;

    .prologue
    .line 220
    const-string v1, "launchPurchaseFlow"

    invoke-virtual {p0, v1}, Lorg/telegram/util/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    .line 221
    const-string v1, "launchPurchaseFlow"

    invoke-virtual {p0, v1}, Lorg/telegram/util/IabHelper;->flagStartAsync(Ljava/lang/String;)V

    .line 224
    const-string v1, "subs"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    iget-boolean v1, p0, Lorg/telegram/util/IabHelper;->mSubscriptionsSupported:Z

    if-nez v1, :cond_2a

    .line 225
    new-instance v11, Lorg/telegram/util/IabResult;

    const/16 v1, -0x3f1

    const-string v2, "Subscriptions are not available."

    invoke-direct {v11, v1, v2}, Lorg/telegram/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 227
    .local v11, "r":Lorg/telegram/util/IabResult;
    if-eqz p5, :cond_29

    const/4 v1, 0x0

    move-object/from16 v0, p5

    invoke-interface {v0, v11, v1}, Lorg/telegram/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lorg/telegram/util/IabResult;Lorg/telegram/util/Purchase;)V

    .line 267
    .end local v11    # "r":Lorg/telegram/util/IabResult;
    :cond_29
    :goto_29
    return-void

    .line 232
    :cond_2a
    :try_start_2a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Constructing buy intent for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", item type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p3

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/telegram/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 233
    iget-object v1, p0, Lorg/telegram/util/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v2, 0x3

    iget-object v3, p0, Lorg/telegram/util/IabHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p6

    invoke-interface/range {v1 .. v6}, Lcom/android/vending/billing/IInAppBillingService;->getBuyIntent(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v8

    .line 234
    .local v8, "buyIntentBundle":Landroid/os/Bundle;
    invoke-virtual {p0, v8}, Lorg/telegram/util/IabHelper;->getResponseCodeFromBundle(Landroid/os/Bundle;)I

    move-result v12

    .line 235
    .local v12, "response":I
    if-eqz v12, :cond_c0

    .line 236
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to buy item, Error response: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v12}, Lorg/telegram/util/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/telegram/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 238
    new-instance v13, Lorg/telegram/util/IabResult;

    const-string v1, "Unable to buy item"

    invoke-direct {v13, v12, v1}, Lorg/telegram/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 239
    .local v13, "result":Lorg/telegram/util/IabResult;
    if-eqz p5, :cond_29

    const/4 v1, 0x0

    move-object/from16 v0, p5

    invoke-interface {v0, v13, v1}, Lorg/telegram/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lorg/telegram/util/IabResult;Lorg/telegram/util/Purchase;)V
    :try_end_90
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_2a .. :try_end_90} :catch_91
    .catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_90} :catch_124

    goto :goto_29

    .line 253
    .end local v8    # "buyIntentBundle":Landroid/os/Bundle;
    .end local v12    # "response":I
    .end local v13    # "result":Lorg/telegram/util/IabResult;
    :catch_91
    move-exception v9

    .line 254
    .local v9, "e":Landroid/content/IntentSender$SendIntentException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SendIntentException while launching purchase flow for sku "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/telegram/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 255
    invoke-virtual {v9}, Landroid/content/IntentSender$SendIntentException;->printStackTrace()V

    .line 257
    new-instance v13, Lorg/telegram/util/IabResult;

    const/16 v1, -0x3ec

    const-string v2, "Failed to send intent."

    invoke-direct {v13, v1, v2}, Lorg/telegram/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 258
    .restart local v13    # "result":Lorg/telegram/util/IabResult;
    if-eqz p5, :cond_29

    const/4 v1, 0x0

    move-object/from16 v0, p5

    invoke-interface {v0, v13, v1}, Lorg/telegram/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lorg/telegram/util/IabResult;Lorg/telegram/util/Purchase;)V

    goto/16 :goto_29

    .line 243
    .end local v9    # "e":Landroid/content/IntentSender$SendIntentException;
    .end local v13    # "result":Lorg/telegram/util/IabResult;
    .restart local v8    # "buyIntentBundle":Landroid/os/Bundle;
    .restart local v12    # "response":I
    :cond_c0
    :try_start_c0
    const-string v1, "BUY_INTENT"

    invoke-virtual {v8, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v10

    check-cast v10, Landroid/app/PendingIntent;

    .line 244
    .local v10, "pendingIntent":Landroid/app/PendingIntent;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Launching buy intent for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Request code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, p4

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/telegram/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 245
    move/from16 v0, p4

    iput v0, p0, Lorg/telegram/util/IabHelper;->mRequestCode:I

    .line 246
    move-object/from16 v0, p5

    iput-object v0, p0, Lorg/telegram/util/IabHelper;->mPurchaseListener:Lorg/telegram/util/IabHelper$OnIabPurchaseFinishedListener;

    .line 247
    move-object/from16 v0, p3

    iput-object v0, p0, Lorg/telegram/util/IabHelper;->mPurchasingItemType:Ljava/lang/String;

    .line 248
    invoke-virtual {v10}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v2

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const/4 v1, 0x0

    .line 250
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v1, 0x0

    .line 251
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    move-object v1, p1

    move/from16 v3, p4

    .line 248
    invoke-virtual/range {v1 .. v7}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    :try_end_122
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_c0 .. :try_end_122} :catch_91
    .catch Landroid/os/RemoteException; {:try_start_c0 .. :try_end_122} :catch_124

    goto/16 :goto_29

    .line 260
    .end local v8    # "buyIntentBundle":Landroid/os/Bundle;
    .end local v10    # "pendingIntent":Landroid/app/PendingIntent;
    .end local v12    # "response":I
    :catch_124
    move-exception v9

    .line 261
    .local v9, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemoteException while launching purchase flow for sku "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/telegram/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 262
    invoke-virtual {v9}, Landroid/os/RemoteException;->printStackTrace()V

    .line 264
    new-instance v13, Lorg/telegram/util/IabResult;

    const/16 v1, -0x3e9

    const-string v2, "Remote exception while starting purchase flow"

    invoke-direct {v13, v1, v2}, Lorg/telegram/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 265
    .restart local v13    # "result":Lorg/telegram/util/IabResult;
    if-eqz p5, :cond_29

    const/4 v1, 0x0

    move-object/from16 v0, p5

    invoke-interface {v0, v13, v1}, Lorg/telegram/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lorg/telegram/util/IabResult;Lorg/telegram/util/Purchase;)V

    goto/16 :goto_29
.end method

.method public launchSubscriptionPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILorg/telegram/util/IabHelper$OnIabPurchaseFinishedListener;)V
    .registers 11
    .param p1, "act"    # Landroid/app/Activity;
    .param p2, "sku"    # Ljava/lang/String;
    .param p3, "requestCode"    # I
    .param p4, "listener"    # Lorg/telegram/util/IabHelper$OnIabPurchaseFinishedListener;

    .prologue
    .line 210
    const-string v5, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/util/IabHelper;->launchSubscriptionPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILorg/telegram/util/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V

    .line 211
    return-void
.end method

.method public launchSubscriptionPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILorg/telegram/util/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V
    .registers 13
    .param p1, "act"    # Landroid/app/Activity;
    .param p2, "sku"    # Ljava/lang/String;
    .param p3, "requestCode"    # I
    .param p4, "listener"    # Lorg/telegram/util/IabHelper$OnIabPurchaseFinishedListener;
    .param p5, "extraData"    # Ljava/lang/String;

    .prologue
    .line 215
    const-string v3, "subs"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/util/IabHelper;->launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILorg/telegram/util/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V

    .line 216
    return-void
.end method

.method logDebug(Ljava/lang/String;)V
    .registers 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 714
    iget-boolean v0, p0, Lorg/telegram/util/IabHelper;->mDebugLog:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lorg/telegram/util/IabHelper;->mDebugTag:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    :cond_9
    return-void
.end method

.method logError(Ljava/lang/String;)V
    .registers 5
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 718
    iget-object v0, p0, Lorg/telegram/util/IabHelper;->mDebugTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In-app billing error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    return-void
.end method

.method logWarn(Ljava/lang/String;)V
    .registers 5
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 722
    iget-object v0, p0, Lorg/telegram/util/IabHelper;->mDebugTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In-app billing warning: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    return-void
.end method

.method public queryInventory(ZLjava/util/List;)Lorg/telegram/util/Inventory;
    .registers 4
    .param p1, "querySkuDetails"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/telegram/util/Inventory;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/util/IabException;
        }
    .end annotation

    .prologue
    .line 353
    .local p2, "moreSkus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/telegram/util/IabHelper;->queryInventory(ZLjava/util/List;Ljava/util/List;)Lorg/telegram/util/Inventory;

    move-result-object v0

    return-object v0
.end method

.method public queryInventory(ZLjava/util/List;Ljava/util/List;)Lorg/telegram/util/Inventory;
    .registers 10
    .param p1, "querySkuDetails"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/telegram/util/Inventory;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/util/IabException;
        }
    .end annotation

    .prologue
    .line 357
    .local p2, "moreItemSkus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "moreSubsSkus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v3, "queryInventory"

    invoke-virtual {p0, v3}, Lorg/telegram/util/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    .line 359
    :try_start_5
    new-instance v1, Lorg/telegram/util/Inventory;

    invoke-direct {v1}, Lorg/telegram/util/Inventory;-><init>()V

    .line 360
    .local v1, "inv":Lorg/telegram/util/Inventory;
    const-string v3, "inapp"

    invoke-virtual {p0, v1, v3}, Lorg/telegram/util/IabHelper;->queryPurchases(Lorg/telegram/util/Inventory;Ljava/lang/String;)I

    move-result v2

    .line 361
    .local v2, "r":I
    if-eqz v2, :cond_25

    .line 362
    new-instance v3, Lorg/telegram/util/IabException;

    const-string v4, "Error refreshing inventory (querying owned items)."

    invoke-direct {v3, v2, v4}, Lorg/telegram/util/IabException;-><init>(ILjava/lang/String;)V

    throw v3
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_1a} :catch_1a
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_1a} :catch_37

    .line 389
    .end local v1    # "inv":Lorg/telegram/util/Inventory;
    .end local v2    # "r":I
    :catch_1a
    move-exception v0

    .line 390
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v3, Lorg/telegram/util/IabException;

    const/16 v4, -0x3e9

    const-string v5, "Remote exception while refreshing inventory."

    invoke-direct {v3, v4, v5, v0}, Lorg/telegram/util/IabException;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    throw v3

    .line 365
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "inv":Lorg/telegram/util/Inventory;
    .restart local v2    # "r":I
    :cond_25
    if-eqz p1, :cond_42

    .line 366
    :try_start_27
    const-string v3, "inapp"

    invoke-virtual {p0, v3, v1, p2}, Lorg/telegram/util/IabHelper;->querySkuDetails(Ljava/lang/String;Lorg/telegram/util/Inventory;Ljava/util/List;)I

    move-result v2

    .line 367
    if-eqz v2, :cond_42

    .line 368
    new-instance v3, Lorg/telegram/util/IabException;

    const-string v4, "Error refreshing inventory (querying prices of items)."

    invoke-direct {v3, v2, v4}, Lorg/telegram/util/IabException;-><init>(ILjava/lang/String;)V

    throw v3
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_37} :catch_1a
    .catch Lorg/json/JSONException; {:try_start_27 .. :try_end_37} :catch_37

    .line 392
    .end local v1    # "inv":Lorg/telegram/util/Inventory;
    .end local v2    # "r":I
    :catch_37
    move-exception v0

    .line 393
    .local v0, "e":Lorg/json/JSONException;
    new-instance v3, Lorg/telegram/util/IabException;

    const/16 v4, -0x3ea

    const-string v5, "Error parsing JSON response while refreshing inventory."

    invoke-direct {v3, v4, v5, v0}, Lorg/telegram/util/IabException;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    throw v3

    .line 373
    .end local v0    # "e":Lorg/json/JSONException;
    .restart local v1    # "inv":Lorg/telegram/util/Inventory;
    .restart local v2    # "r":I
    :cond_42
    :try_start_42
    iget-boolean v3, p0, Lorg/telegram/util/IabHelper;->mSubscriptionsSupported:Z

    if-eqz v3, :cond_68

    .line 374
    const-string v3, "subs"

    invoke-virtual {p0, v1, v3}, Lorg/telegram/util/IabHelper;->queryPurchases(Lorg/telegram/util/Inventory;Ljava/lang/String;)I

    move-result v2

    .line 375
    if-eqz v2, :cond_56

    .line 376
    new-instance v3, Lorg/telegram/util/IabException;

    const-string v4, "Error refreshing inventory (querying owned subscriptions)."

    invoke-direct {v3, v2, v4}, Lorg/telegram/util/IabException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 379
    :cond_56
    if-eqz p1, :cond_68

    .line 380
    const-string v3, "subs"

    invoke-virtual {p0, v3, v1, p2}, Lorg/telegram/util/IabHelper;->querySkuDetails(Ljava/lang/String;Lorg/telegram/util/Inventory;Ljava/util/List;)I

    move-result v2

    .line 381
    if-eqz v2, :cond_68

    .line 382
    new-instance v3, Lorg/telegram/util/IabException;

    const-string v4, "Error refreshing inventory (querying prices of subscriptions)."

    invoke-direct {v3, v2, v4}, Lorg/telegram/util/IabException;-><init>(ILjava/lang/String;)V

    throw v3
    :try_end_68
    .catch Landroid/os/RemoteException; {:try_start_42 .. :try_end_68} :catch_1a
    .catch Lorg/json/JSONException; {:try_start_42 .. :try_end_68} :catch_37

    .line 387
    :cond_68
    return-object v1
.end method

.method public queryInventoryAsync(Lorg/telegram/util/IabHelper$QueryInventoryFinishedListener;)V
    .registers 4
    .param p1, "listener"    # Lorg/telegram/util/IabHelper$QueryInventoryFinishedListener;

    .prologue
    .line 432
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lorg/telegram/util/IabHelper;->queryInventoryAsync(ZLjava/util/List;Lorg/telegram/util/IabHelper$QueryInventoryFinishedListener;)V

    .line 433
    return-void
.end method

.method public queryInventoryAsync(ZLjava/util/List;Lorg/telegram/util/IabHelper$QueryInventoryFinishedListener;)V
    .registers 11
    .param p1, "querySkuDetails"    # Z
    .param p3, "listener"    # Lorg/telegram/util/IabHelper$QueryInventoryFinishedListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/telegram/util/IabHelper$QueryInventoryFinishedListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 404
    .local p2, "moreSkus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    .line 405
    .local v4, "handler":Landroid/os/Handler;
    const-string v0, "queryInventory"

    invoke-virtual {p0, v0}, Lorg/telegram/util/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    .line 406
    const-string v0, "refresh inventory"

    invoke-virtual {p0, v0}, Lorg/telegram/util/IabHelper;->flagStartAsync(Ljava/lang/String;)V

    .line 407
    new-instance v6, Ljava/lang/Thread;

    new-instance v0, Lorg/telegram/util/IabHelper$2;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/telegram/util/IabHelper$2;-><init>(Lorg/telegram/util/IabHelper;ZLjava/util/List;Landroid/os/Handler;Lorg/telegram/util/IabHelper$QueryInventoryFinishedListener;)V

    invoke-direct {v6, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 428
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 429
    return-void
.end method

.method public queryInventoryAsync(ZLorg/telegram/util/IabHelper$QueryInventoryFinishedListener;)V
    .registers 4
    .param p1, "querySkuDetails"    # Z
    .param p2, "listener"    # Lorg/telegram/util/IabHelper$QueryInventoryFinishedListener;

    .prologue
    .line 436
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lorg/telegram/util/IabHelper;->queryInventoryAsync(ZLjava/util/List;Lorg/telegram/util/IabHelper$QueryInventoryFinishedListener;)V

    .line 437
    return-void
.end method

.method queryPurchases(Lorg/telegram/util/Inventory;Ljava/lang/String;)I
    .registers 19
    .param p1, "inv"    # Lorg/telegram/util/Inventory;
    .param p2, "itemType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 574
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Querying owned items, item type: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lorg/telegram/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 575
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Package name: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/util/IabHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lorg/telegram/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 576
    const/4 v12, 0x0

    .line 577
    .local v12, "verificationFailed":Z
    const/4 v1, 0x0

    .line 580
    .local v1, "continueToken":Ljava/lang/String;
    :cond_3c
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Calling getPurchases with continuation token: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lorg/telegram/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 581
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/util/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v14, 0x3

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/util/IabHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-interface {v13, v14, v15, v0, v1}, Lcom/android/vending/billing/IInAppBillingService;->getPurchases(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 584
    .local v3, "ownedItems":Landroid/os/Bundle;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lorg/telegram/util/IabHelper;->getResponseCodeFromBundle(Landroid/os/Bundle;)I

    move-result v8

    .line 585
    .local v8, "response":I
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Owned items response: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lorg/telegram/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 586
    if-eqz v8, :cond_a8

    .line 587
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "getPurchases() failed: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {v8}, Lorg/telegram/util/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lorg/telegram/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 632
    .end local v8    # "response":I
    :goto_a7
    return v8

    .line 590
    .restart local v8    # "response":I
    :cond_a8
    const-string v13, "INAPP_PURCHASE_ITEM_LIST"

    invoke-virtual {v3, v13}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_c0

    const-string v13, "INAPP_PURCHASE_DATA_LIST"

    .line 591
    invoke-virtual {v3, v13}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_c0

    const-string v13, "INAPP_DATA_SIGNATURE_LIST"

    .line 592
    invoke-virtual {v3, v13}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_ca

    .line 593
    :cond_c0
    const-string v13, "Bundle returned from getPurchases() doesn\'t contain required fields."

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lorg/telegram/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 594
    const/16 v8, -0x3ea

    goto :goto_a7

    .line 597
    :cond_ca
    const-string v13, "INAPP_PURCHASE_ITEM_LIST"

    invoke-virtual {v3, v13}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 599
    .local v4, "ownedSkus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v13, "INAPP_PURCHASE_DATA_LIST"

    invoke-virtual {v3, v13}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    .line 601
    .local v7, "purchaseDataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v13, "INAPP_DATA_SIGNATURE_LIST"

    invoke-virtual {v3, v13}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    .line 604
    .local v10, "signatureList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_dd
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v2, v13, :cond_188

    .line 605
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 606
    .local v6, "purchaseData":Ljava/lang/String;
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 607
    .local v9, "signature":Ljava/lang/String;
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 608
    .local v11, "sku":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/util/IabHelper;->mSignatureBase64:Ljava/lang/String;

    invoke-static {v13, v6, v9}, Lorg/telegram/util/Security;->verifyPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_14f

    .line 609
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Sku is owned: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lorg/telegram/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 610
    new-instance v5, Lorg/telegram/util/Purchase;

    move-object/from16 v0, p2

    invoke-direct {v5, v0, v6, v9}, Lorg/telegram/util/Purchase;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 612
    .local v5, "purchase":Lorg/telegram/util/Purchase;
    invoke-virtual {v5}, Lorg/telegram/util/Purchase;->getToken()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_147

    .line 613
    const-string v13, "BUG: empty/null token!"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lorg/telegram/util/IabHelper;->logWarn(Ljava/lang/String;)V

    .line 614
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Purchase data: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lorg/telegram/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 618
    :cond_147
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lorg/telegram/util/Inventory;->addPurchase(Lorg/telegram/util/Purchase;)V

    .line 604
    .end local v5    # "purchase":Lorg/telegram/util/Purchase;
    :goto_14c
    add-int/lit8 v2, v2, 0x1

    goto :goto_dd

    .line 621
    :cond_14f
    const-string v13, "Purchase signature verification **FAILED**. Not adding item."

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lorg/telegram/util/IabHelper;->logWarn(Ljava/lang/String;)V

    .line 622
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "   Purchase data: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lorg/telegram/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 623
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "   Signature: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lorg/telegram/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 624
    const/4 v12, 0x1

    goto :goto_14c

    .line 628
    .end local v6    # "purchaseData":Ljava/lang/String;
    .end local v9    # "signature":Ljava/lang/String;
    .end local v11    # "sku":Ljava/lang/String;
    :cond_188
    const-string v13, "INAPP_CONTINUATION_TOKEN"

    invoke-virtual {v3, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 629
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Continuation token: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lorg/telegram/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 630
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_3c

    .line 632
    if-eqz v12, :cond_1b3

    const/16 v13, -0x3eb

    :goto_1b0
    move v8, v13

    goto/16 :goto_a7

    :cond_1b3
    const/4 v13, 0x0

    goto :goto_1b0
.end method

.method querySkuDetails(Ljava/lang/String;Lorg/telegram/util/Inventory;Ljava/util/List;)I
    .registers 14
    .param p1, "itemType"    # Ljava/lang/String;
    .param p2, "inv"    # Lorg/telegram/util/Inventory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/telegram/util/Inventory;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .local p3, "moreSkus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 637
    const-string v7, "Querying SKU details."

    invoke-virtual {p0, v7}, Lorg/telegram/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 638
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 639
    .local v5, "skuList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p2, p1}, Lorg/telegram/util/Inventory;->getAllOwnedSkus(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 640
    if-eqz p3, :cond_17

    invoke-virtual {v5, p3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 642
    :cond_17
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-nez v7, :cond_23

    .line 643
    const-string v7, "queryPrices: nothing to do because there are no SKUs."

    invoke-virtual {p0, v7}, Lorg/telegram/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 672
    :cond_22
    :goto_22
    return v2

    .line 647
    :cond_23
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 648
    .local v1, "querySkus":Landroid/os/Bundle;
    const-string v7, "ITEM_ID_LIST"

    invoke-virtual {v1, v7, v5}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 649
    iget-object v7, p0, Lorg/telegram/util/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v8, 0x3

    iget-object v9, p0, Lorg/telegram/util/IabHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v8, v9, p1, v1}, Lcom/android/vending/billing/IInAppBillingService;->getSkuDetails(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v4

    .line 652
    .local v4, "skuDetails":Landroid/os/Bundle;
    const-string v7, "DETAILS_LIST"

    invoke-virtual {v4, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_6b

    .line 653
    invoke-virtual {p0, v4}, Lorg/telegram/util/IabHelper;->getResponseCodeFromBundle(Landroid/os/Bundle;)I

    move-result v2

    .line 654
    .local v2, "response":I
    if-eqz v2, :cond_63

    .line 655
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getSkuDetails() failed: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v2}, Lorg/telegram/util/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lorg/telegram/util/IabHelper;->logDebug(Ljava/lang/String;)V

    goto :goto_22

    .line 659
    :cond_63
    const-string v7, "getSkuDetails() returned a bundle with neither an error nor a detail list."

    invoke-virtual {p0, v7}, Lorg/telegram/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 660
    const/16 v2, -0x3ea

    goto :goto_22

    .line 664
    .end local v2    # "response":I
    :cond_6b
    const-string v7, "DETAILS_LIST"

    invoke-virtual {v4, v7}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 667
    .local v3, "responseList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_75
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_22

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 668
    .local v6, "thisResponse":Ljava/lang/String;
    new-instance v0, Lorg/telegram/util/SkuDetails;

    invoke-direct {v0, p1, v6}, Lorg/telegram/util/SkuDetails;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 669
    .local v0, "d":Lorg/telegram/util/SkuDetails;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Got sku details: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lorg/telegram/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 670
    invoke-virtual {p2, v0}, Lorg/telegram/util/Inventory;->addSkuDetails(Lorg/telegram/util/SkuDetails;)V

    goto :goto_75
.end method

.method public startSetup(Lorg/telegram/util/IabHelper$OnIabSetupFinishedListener;)V
    .registers 6
    .param p1, "listener"    # Lorg/telegram/util/IabHelper$OnIabSetupFinishedListener;

    .prologue
    .line 104
    iget-boolean v1, p0, Lorg/telegram/util/IabHelper;->mSetupDone:Z

    if-eqz v1, :cond_c

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "IAB helper is already set up."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 107
    :cond_c
    const-string v1, "Starting in-app billing setup."

    invoke-virtual {p0, v1}, Lorg/telegram/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 108
    new-instance v1, Lorg/telegram/util/IabHelper$1;

    invoke-direct {v1, p0, p1}, Lorg/telegram/util/IabHelper$1;-><init>(Lorg/telegram/util/IabHelper;Lorg/telegram/util/IabHelper$OnIabSetupFinishedListener;)V

    iput-object v1, p0, Lorg/telegram/util/IabHelper;->mServiceConn:Landroid/content/ServiceConnection;

    .line 159
    new-instance v0, Landroid/content/Intent;

    const-string v1, "ir.cafebazaar.pardakht.InAppBillingService.BIND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 160
    .local v0, "serviceIntent":Landroid/content/Intent;
    const-string v1, "com.farsitel.bazaar"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 165
    iget-object v1, p0, Lorg/telegram/util/IabHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3e

    .line 166
    iget-object v1, p0, Lorg/telegram/util/IabHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lorg/telegram/util/IabHelper;->mServiceConn:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 175
    :cond_3d
    :goto_3d
    return-void

    .line 169
    :cond_3e
    if-eqz p1, :cond_3d

    .line 170
    new-instance v1, Lorg/telegram/util/IabResult;

    const/4 v2, 0x3

    const-string v3, "Billing service unavailable on device."

    invoke-direct {v1, v2, v3}, Lorg/telegram/util/IabResult;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, v1}, Lorg/telegram/util/IabHelper$OnIabSetupFinishedListener;->onIabSetupFinished(Lorg/telegram/util/IabResult;)V

    goto :goto_3d
.end method

.method public subscriptionsSupported()Z
    .registers 2

    .prologue
    .line 189
    iget-boolean v0, p0, Lorg/telegram/util/IabHelper;->mSubscriptionsSupported:Z

    return v0
.end method
