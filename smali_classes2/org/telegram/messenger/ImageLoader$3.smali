.class Lorg/telegram/messenger/ImageLoader$3;
.super Landroid/content/BroadcastReceiver;
.source "ImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/ImageLoader;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/ImageLoader;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/ImageLoader;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/messenger/ImageLoader;

    .prologue
    .line 1230
    iput-object p1, p0, Lorg/telegram/messenger/ImageLoader$3;->this$0:Lorg/telegram/messenger/ImageLoader;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1233
    const-string v1, "file system changed"

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 1234
    new-instance v0, Lorg/telegram/messenger/ImageLoader$3$1;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/ImageLoader$3$1;-><init>(Lorg/telegram/messenger/ImageLoader$3;)V

    .line 1239
    .local v0, "r":Ljava/lang/Runnable;
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 1240
    const-wide/16 v2, 0x3e8

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 1244
    :goto_1b
    return-void

    .line 1242
    :cond_1c
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_1b
.end method
