.class final Lcom/onesignal/OneSignal$4;
.super Ljava/lang/Object;
.source "OneSignal.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$finalFullMessage:Ljava/lang/String;

.field final synthetic val$level:Lcom/onesignal/OneSignal$LOG_LEVEL;


# direct methods
.method constructor <init>(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 614
    iput-object p1, p0, Lcom/onesignal/OneSignal$4;->val$level:Lcom/onesignal/OneSignal$LOG_LEVEL;

    iput-object p2, p0, Lcom/onesignal/OneSignal$4;->val$finalFullMessage:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 617
    sget-object v0, Lcom/onesignal/ActivityLifecycleHandler;->curActivity:Landroid/app/Activity;

    if-eqz v0, :cond_1e

    .line 618
    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v1, Lcom/onesignal/ActivityLifecycleHandler;->curActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/onesignal/OneSignal$4;->val$level:Lcom/onesignal/OneSignal$LOG_LEVEL;

    .line 619
    invoke-virtual {v1}, Lcom/onesignal/OneSignal$LOG_LEVEL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/onesignal/OneSignal$4;->val$finalFullMessage:Ljava/lang/String;

    .line 620
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 621
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 622
    :cond_1e
    return-void
.end method
