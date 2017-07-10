.class Lorg/telegram/ui/VoIPActivity$3$1;
.super Ljava/lang/Object;
.source "VoIPActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/VoIPActivity$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/VoIPActivity$3;


# direct methods
.method constructor <init>(Lorg/telegram/ui/VoIPActivity$3;)V
    .registers 2
    .param p1, "this$1"    # Lorg/telegram/ui/VoIPActivity$3;

    .prologue
    .line 207
    iput-object p1, p0, Lorg/telegram/ui/VoIPActivity$3$1;->this$1:Lorg/telegram/ui/VoIPActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 210
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    if-nez v0, :cond_1e

    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity$3$1;->this$1:Lorg/telegram/ui/VoIPActivity$3;

    iget-object v0, v0, Lorg/telegram/ui/VoIPActivity$3;->this$0:Lorg/telegram/ui/VoIPActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/VoIPActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 211
    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity$3$1;->this$1:Lorg/telegram/ui/VoIPActivity$3;

    iget-object v0, v0, Lorg/telegram/ui/VoIPActivity$3;->this$0:Lorg/telegram/ui/VoIPActivity;

    # getter for: Lorg/telegram/ui/VoIPActivity;->endBtn:Landroid/view/View;
    invoke-static {v0}, Lorg/telegram/ui/VoIPActivity;->access$200(Lorg/telegram/ui/VoIPActivity;)Landroid/view/View;

    move-result-object v0

    const-wide/16 v2, 0x64

    invoke-virtual {v0, p0, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 216
    :cond_1d
    :goto_1d
    return-void

    .line 214
    :cond_1e
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 215
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/VoIPActivity$3$1;->this$1:Lorg/telegram/ui/VoIPActivity$3;

    iget-object v1, v1, Lorg/telegram/ui/VoIPActivity$3;->this$0:Lorg/telegram/ui/VoIPActivity;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/voip/VoIPService;->registerStateListener(Lorg/telegram/messenger/voip/VoIPService$StateListener;)V

    goto :goto_1d
.end method
