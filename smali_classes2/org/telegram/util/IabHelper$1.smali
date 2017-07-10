.class Lorg/telegram/util/IabHelper$1;
.super Ljava/lang/Object;
.source "IabHelper.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/util/IabHelper;->startSetup(Lorg/telegram/util/IabHelper$OnIabSetupFinishedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/util/IabHelper;

.field final synthetic val$listener:Lorg/telegram/util/IabHelper$OnIabSetupFinishedListener;


# direct methods
.method constructor <init>(Lorg/telegram/util/IabHelper;Lorg/telegram/util/IabHelper$OnIabSetupFinishedListener;)V
    .registers 3
    .param p1, "this$0"    # Lorg/telegram/util/IabHelper;

    .prologue
    .line 108
    iput-object p1, p0, Lorg/telegram/util/IabHelper$1;->this$0:Lorg/telegram/util/IabHelper;

    iput-object p2, p0, Lorg/telegram/util/IabHelper$1;->val$listener:Lorg/telegram/util/IabHelper$OnIabSetupFinishedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 10
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    const/4 v6, 0x0

    .line 117
    iget-object v3, p0, Lorg/telegram/util/IabHelper$1;->this$0:Lorg/telegram/util/IabHelper;

    const-string v4, "Billing service connected."

    invoke-virtual {v3, v4}, Lorg/telegram/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 118
    iget-object v3, p0, Lorg/telegram/util/IabHelper$1;->this$0:Lorg/telegram/util/IabHelper;

    invoke-static {p2}, Lcom/android/vending/billing/IInAppBillingService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/vending/billing/IInAppBillingService;

    move-result-object v4

    iput-object v4, v3, Lorg/telegram/util/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    .line 119
    iget-object v3, p0, Lorg/telegram/util/IabHelper$1;->this$0:Lorg/telegram/util/IabHelper;

    iget-object v3, v3, Lorg/telegram/util/IabHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 121
    .local v1, "packageName":Ljava/lang/String;
    :try_start_18
    iget-object v3, p0, Lorg/telegram/util/IabHelper$1;->this$0:Lorg/telegram/util/IabHelper;

    const-string v4, "Checking for in-app billing 3 support."

    invoke-virtual {v3, v4}, Lorg/telegram/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 123
    iget-object v3, p0, Lorg/telegram/util/IabHelper$1;->this$0:Lorg/telegram/util/IabHelper;

    iget-object v3, v3, Lorg/telegram/util/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v4, 0x3

    const-string v5, "inapp"

    invoke-interface {v3, v4, v1, v5}, Lcom/android/vending/billing/IInAppBillingService;->isBillingSupported(ILjava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 124
    .local v2, "response":I
    if-eqz v2, :cond_42

    .line 125
    iget-object v3, p0, Lorg/telegram/util/IabHelper$1;->val$listener:Lorg/telegram/util/IabHelper$OnIabSetupFinishedListener;

    if-eqz v3, :cond_3c

    iget-object v3, p0, Lorg/telegram/util/IabHelper$1;->val$listener:Lorg/telegram/util/IabHelper$OnIabSetupFinishedListener;

    new-instance v4, Lorg/telegram/util/IabResult;

    const-string v5, "Error checking for billing v3 support."

    invoke-direct {v4, v2, v5}, Lorg/telegram/util/IabResult;-><init>(ILjava/lang/String;)V

    invoke-interface {v3, v4}, Lorg/telegram/util/IabHelper$OnIabSetupFinishedListener;->onIabSetupFinished(Lorg/telegram/util/IabResult;)V

    .line 128
    :cond_3c
    iget-object v3, p0, Lorg/telegram/util/IabHelper$1;->this$0:Lorg/telegram/util/IabHelper;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lorg/telegram/util/IabHelper;->mSubscriptionsSupported:Z

    .line 156
    .end local v2    # "response":I
    :cond_41
    :goto_41
    return-void

    .line 131
    .restart local v2    # "response":I
    :cond_42
    iget-object v3, p0, Lorg/telegram/util/IabHelper$1;->this$0:Lorg/telegram/util/IabHelper;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "In-app billing version 3 supported for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 133
    iget-object v3, p0, Lorg/telegram/util/IabHelper$1;->this$0:Lorg/telegram/util/IabHelper;

    iget-object v3, v3, Lorg/telegram/util/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v4, 0x3

    const-string v5, "subs"

    invoke-interface {v3, v4, v1, v5}, Lcom/android/vending/billing/IInAppBillingService;->isBillingSupported(ILjava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 134
    if-nez v2, :cond_89

    .line 135
    iget-object v3, p0, Lorg/telegram/util/IabHelper$1;->this$0:Lorg/telegram/util/IabHelper;

    const-string v4, "Subscriptions AVAILABLE."

    invoke-virtual {v3, v4}, Lorg/telegram/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 136
    iget-object v3, p0, Lorg/telegram/util/IabHelper$1;->this$0:Lorg/telegram/util/IabHelper;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lorg/telegram/util/IabHelper;->mSubscriptionsSupported:Z

    .line 142
    :goto_73
    iget-object v3, p0, Lorg/telegram/util/IabHelper$1;->this$0:Lorg/telegram/util/IabHelper;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lorg/telegram/util/IabHelper;->mSetupDone:Z
    :try_end_78
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_78} :catch_a2

    .line 153
    iget-object v3, p0, Lorg/telegram/util/IabHelper$1;->val$listener:Lorg/telegram/util/IabHelper$OnIabSetupFinishedListener;

    if-eqz v3, :cond_41

    .line 154
    iget-object v3, p0, Lorg/telegram/util/IabHelper$1;->val$listener:Lorg/telegram/util/IabHelper$OnIabSetupFinishedListener;

    new-instance v4, Lorg/telegram/util/IabResult;

    const-string v5, "Setup successful."

    invoke-direct {v4, v6, v5}, Lorg/telegram/util/IabResult;-><init>(ILjava/lang/String;)V

    invoke-interface {v3, v4}, Lorg/telegram/util/IabHelper$OnIabSetupFinishedListener;->onIabSetupFinished(Lorg/telegram/util/IabResult;)V

    goto :goto_41

    .line 139
    :cond_89
    :try_start_89
    iget-object v3, p0, Lorg/telegram/util/IabHelper$1;->this$0:Lorg/telegram/util/IabHelper;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Subscriptions NOT AVAILABLE. Response: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/util/IabHelper;->logDebug(Ljava/lang/String;)V
    :try_end_a1
    .catch Landroid/os/RemoteException; {:try_start_89 .. :try_end_a1} :catch_a2

    goto :goto_73

    .line 144
    .end local v2    # "response":I
    :catch_a2
    move-exception v0

    .line 145
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v3, p0, Lorg/telegram/util/IabHelper$1;->val$listener:Lorg/telegram/util/IabHelper$OnIabSetupFinishedListener;

    if-eqz v3, :cond_b5

    .line 146
    iget-object v3, p0, Lorg/telegram/util/IabHelper$1;->val$listener:Lorg/telegram/util/IabHelper$OnIabSetupFinishedListener;

    new-instance v4, Lorg/telegram/util/IabResult;

    const/16 v5, -0x3e9

    const-string v6, "RemoteException while setting up in-app billing."

    invoke-direct {v4, v5, v6}, Lorg/telegram/util/IabResult;-><init>(ILjava/lang/String;)V

    invoke-interface {v3, v4}, Lorg/telegram/util/IabHelper$OnIabSetupFinishedListener;->onIabSetupFinished(Lorg/telegram/util/IabResult;)V

    .line 149
    :cond_b5
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_41
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 111
    iget-object v0, p0, Lorg/telegram/util/IabHelper$1;->this$0:Lorg/telegram/util/IabHelper;

    const-string v1, "Billing service disconnected."

    invoke-virtual {v0, v1}, Lorg/telegram/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lorg/telegram/util/IabHelper$1;->this$0:Lorg/telegram/util/IabHelper;

    const/4 v1, 0x0

    iput-object v1, v0, Lorg/telegram/util/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    .line 113
    return-void
.end method
