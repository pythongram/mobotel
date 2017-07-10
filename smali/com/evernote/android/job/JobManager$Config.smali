.class public final Lcom/evernote/android/job/JobManager$Config;
.super Ljava/lang/Object;
.source "JobManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evernote/android/job/JobManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Config"
.end annotation


# instance fields
.field private mAllowSmallerIntervals:Z

.field private mGcmEnabled:Z

.field private mVerbose:Z

.field final synthetic this$0:Lcom/evernote/android/job/JobManager;


# direct methods
.method private constructor <init>(Lcom/evernote/android/job/JobManager;)V
    .registers 3
    .param p1, "this$0"    # Lcom/evernote/android/job/JobManager;

    .prologue
    const/4 v0, 0x1

    .line 534
    iput-object p1, p0, Lcom/evernote/android/job/JobManager$Config;->this$0:Lcom/evernote/android/job/JobManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 535
    iput-boolean v0, p0, Lcom/evernote/android/job/JobManager$Config;->mVerbose:Z

    .line 536
    iput-boolean v0, p0, Lcom/evernote/android/job/JobManager$Config;->mGcmEnabled:Z

    .line 537
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/evernote/android/job/JobManager$Config;->mAllowSmallerIntervals:Z

    .line 538
    return-void
.end method

.method synthetic constructor <init>(Lcom/evernote/android/job/JobManager;Lcom/evernote/android/job/JobManager$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/evernote/android/job/JobManager;
    .param p2, "x1"    # Lcom/evernote/android/job/JobManager$1;

    .prologue
    .line 528
    invoke-direct {p0, p1}, Lcom/evernote/android/job/JobManager$Config;-><init>(Lcom/evernote/android/job/JobManager;)V

    return-void
.end method


# virtual methods
.method public isAllowSmallerIntervalsForMarshmallow()Z
    .registers 3

    .prologue
    .line 605
    iget-boolean v0, p0, Lcom/evernote/android/job/JobManager$Config;->mAllowSmallerIntervals:Z

    if-eqz v0, :cond_c

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public isGcmApiEnabled()Z
    .registers 2

    .prologue
    .line 565
    iget-boolean v0, p0, Lcom/evernote/android/job/JobManager$Config;->mGcmEnabled:Z

    return v0
.end method

.method public isVerbose()Z
    .registers 2

    .prologue
    .line 544
    iget-boolean v0, p0, Lcom/evernote/android/job/JobManager$Config;->mVerbose:Z

    return v0
.end method

.method public setAllowSmallerIntervalsForMarshmallow(Z)V
    .registers 4
    .param p1, "allowSmallerIntervals"    # Z

    .prologue
    .line 616
    if-eqz p1, :cond_10

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_10

    .line 617
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This method is only allowed to call on Android M or earlier"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 619
    :cond_10
    iput-boolean p1, p0, Lcom/evernote/android/job/JobManager$Config;->mAllowSmallerIntervals:Z

    .line 620
    return-void
.end method

.method public setGcmApiEnabled(Z)V
    .registers 7
    .param p1, "enabled"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 577
    iget-boolean v1, p0, Lcom/evernote/android/job/JobManager$Config;->mGcmEnabled:Z

    if-ne p1, v1, :cond_7

    .line 595
    :cond_6
    :goto_6
    return-void

    .line 581
    :cond_7
    iput-boolean p1, p0, Lcom/evernote/android/job/JobManager$Config;->mGcmEnabled:Z

    .line 582
    if-eqz p1, :cond_34

    .line 583
    iget-object v1, p0, Lcom/evernote/android/job/JobManager$Config;->this$0:Lcom/evernote/android/job/JobManager;

    # getter for: Lcom/evernote/android/job/JobManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/evernote/android/job/JobManager;->access$500(Lcom/evernote/android/job/JobManager;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/evernote/android/job/util/JobApi;->getDefault(Landroid/content/Context;Z)Lcom/evernote/android/job/util/JobApi;

    move-result-object v0

    .line 584
    .local v0, "defaultApi":Lcom/evernote/android/job/util/JobApi;
    iget-object v1, p0, Lcom/evernote/android/job/JobManager$Config;->this$0:Lcom/evernote/android/job/JobManager;

    invoke-virtual {v1}, Lcom/evernote/android/job/JobManager;->getApi()Lcom/evernote/android/job/util/JobApi;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/evernote/android/job/util/JobApi;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 585
    iget-object v1, p0, Lcom/evernote/android/job/JobManager$Config;->this$0:Lcom/evernote/android/job/JobManager;

    invoke-virtual {v1, v0}, Lcom/evernote/android/job/JobManager;->setJobProxy(Lcom/evernote/android/job/util/JobApi;)V

    .line 586
    # getter for: Lcom/evernote/android/job/JobManager;->CAT:Lnet/vrallev/android/cat/CatLog;
    invoke-static {}, Lcom/evernote/android/job/JobManager;->access$300()Lnet/vrallev/android/cat/CatLog;

    move-result-object v1

    const-string v2, "Changed default proxy to %s after enabled the GCM API"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Lnet/vrallev/android/cat/CatLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_6

    .line 589
    .end local v0    # "defaultApi":Lcom/evernote/android/job/util/JobApi;
    :cond_34
    iget-object v1, p0, Lcom/evernote/android/job/JobManager$Config;->this$0:Lcom/evernote/android/job/JobManager;

    # getter for: Lcom/evernote/android/job/JobManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/evernote/android/job/JobManager;->access$500(Lcom/evernote/android/job/JobManager;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v4}, Lcom/evernote/android/job/util/JobApi;->getDefault(Landroid/content/Context;Z)Lcom/evernote/android/job/util/JobApi;

    move-result-object v0

    .line 590
    .restart local v0    # "defaultApi":Lcom/evernote/android/job/util/JobApi;
    sget-object v1, Lcom/evernote/android/job/util/JobApi;->GCM:Lcom/evernote/android/job/util/JobApi;

    iget-object v2, p0, Lcom/evernote/android/job/JobManager$Config;->this$0:Lcom/evernote/android/job/JobManager;

    invoke-virtual {v2}, Lcom/evernote/android/job/JobManager;->getApi()Lcom/evernote/android/job/util/JobApi;

    move-result-object v2

    if-ne v1, v2, :cond_6

    .line 591
    iget-object v1, p0, Lcom/evernote/android/job/JobManager$Config;->this$0:Lcom/evernote/android/job/JobManager;

    invoke-virtual {v1, v0}, Lcom/evernote/android/job/JobManager;->setJobProxy(Lcom/evernote/android/job/util/JobApi;)V

    .line 592
    # getter for: Lcom/evernote/android/job/JobManager;->CAT:Lnet/vrallev/android/cat/CatLog;
    invoke-static {}, Lcom/evernote/android/job/JobManager;->access$300()Lnet/vrallev/android/cat/CatLog;

    move-result-object v1

    const-string v2, "Changed default proxy to %s after disabling the GCM API"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Lnet/vrallev/android/cat/CatLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_6
.end method

.method public setVerbose(Z)V
    .registers 3
    .param p1, "verbose"    # Z

    .prologue
    .line 553
    iget-boolean v0, p0, Lcom/evernote/android/job/JobManager$Config;->mVerbose:Z

    if-eq v0, p1, :cond_17

    # getter for: Lcom/evernote/android/job/JobManager;->PACKAGE:Ljava/lang/Package;
    invoke-static {}, Lcom/evernote/android/job/JobManager;->access$400()Ljava/lang/Package;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 554
    iput-boolean p1, p0, Lcom/evernote/android/job/JobManager$Config;->mVerbose:Z

    .line 555
    # getter for: Lcom/evernote/android/job/JobManager;->PACKAGE:Ljava/lang/Package;
    invoke-static {}, Lcom/evernote/android/job/JobManager;->access$400()Ljava/lang/Package;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lnet/vrallev/android/cat/CatGlobal;->setPackageEnabled(Ljava/lang/String;Z)V

    .line 557
    :cond_17
    return-void
.end method
