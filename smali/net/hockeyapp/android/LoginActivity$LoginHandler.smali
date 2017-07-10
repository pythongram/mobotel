.class Lnet/hockeyapp/android/LoginActivity$LoginHandler;
.super Landroid/os/Handler;
.source "LoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/hockeyapp/android/LoginActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LoginHandler"
.end annotation


# instance fields
.field private final mWeakActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 215
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 216
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lnet/hockeyapp/android/LoginActivity$LoginHandler;->mWeakActivity:Ljava/lang/ref/WeakReference;

    .line 217
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 222
    iget-object v3, p0, Lnet/hockeyapp/android/LoginActivity$LoginHandler;->mWeakActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 223
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_b

    .line 240
    :cond_a
    :goto_a
    return-void

    .line 227
    :cond_b
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 228
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v3, "success"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 230
    .local v2, "success":Z
    if-eqz v2, :cond_24

    .line 231
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 233
    sget-object v3, Lnet/hockeyapp/android/LoginManager;->listener:Lnet/hockeyapp/android/LoginManagerListener;

    if-eqz v3, :cond_a

    .line 234
    sget-object v3, Lnet/hockeyapp/android/LoginManager;->listener:Lnet/hockeyapp/android/LoginManagerListener;

    invoke-virtual {v3}, Lnet/hockeyapp/android/LoginManagerListener;->onSuccess()V

    goto :goto_a

    .line 237
    :cond_24
    const-string v3, "Login failed. Check your credentials."

    const/4 v4, 0x1

    invoke-static {v0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    .line 238
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_a
.end method
