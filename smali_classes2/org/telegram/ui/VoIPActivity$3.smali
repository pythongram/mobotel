.class Lorg/telegram/ui/VoIPActivity$3;
.super Ljava/lang/Object;
.source "VoIPActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/VoIPActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/VoIPActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/VoIPActivity;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/VoIPActivity;

    .prologue
    .line 196
    iput-object p1, p0, Lorg/telegram/ui/VoIPActivity$3;->this$0:Lorg/telegram/ui/VoIPActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 199
    iget-object v1, p0, Lorg/telegram/ui/VoIPActivity$3;->this$0:Lorg/telegram/ui/VoIPActivity;

    # getter for: Lorg/telegram/ui/VoIPActivity;->endBtn:Landroid/view/View;
    invoke-static {v1}, Lorg/telegram/ui/VoIPActivity;->access$200(Lorg/telegram/ui/VoIPActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 200
    iget-object v1, p0, Lorg/telegram/ui/VoIPActivity$3;->this$0:Lorg/telegram/ui/VoIPActivity;

    # getter for: Lorg/telegram/ui/VoIPActivity;->retrying:Z
    invoke-static {v1}, Lorg/telegram/ui/VoIPActivity;->access$300(Lorg/telegram/ui/VoIPActivity;)Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 201
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lorg/telegram/ui/VoIPActivity$3;->this$0:Lorg/telegram/ui/VoIPActivity;

    const-class v2, Lorg/telegram/messenger/voip/VoIPService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 202
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "user_id"

    iget-object v2, p0, Lorg/telegram/ui/VoIPActivity$3;->this$0:Lorg/telegram/ui/VoIPActivity;

    # getter for: Lorg/telegram/ui/VoIPActivity;->user:Lorg/telegram/tgnet/TLRPC$User;
    invoke-static {v2}, Lorg/telegram/ui/VoIPActivity;->access$400(Lorg/telegram/ui/VoIPActivity;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 203
    const-string v1, "is_outgoing"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 204
    const-string v1, "start_incall_activity"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 205
    iget-object v1, p0, Lorg/telegram/ui/VoIPActivity$3;->this$0:Lorg/telegram/ui/VoIPActivity;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/VoIPActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 206
    iget-object v1, p0, Lorg/telegram/ui/VoIPActivity$3;->this$0:Lorg/telegram/ui/VoIPActivity;

    # invokes: Lorg/telegram/ui/VoIPActivity;->hideRetry()V
    invoke-static {v1}, Lorg/telegram/ui/VoIPActivity;->access$500(Lorg/telegram/ui/VoIPActivity;)V

    .line 207
    iget-object v1, p0, Lorg/telegram/ui/VoIPActivity$3;->this$0:Lorg/telegram/ui/VoIPActivity;

    # getter for: Lorg/telegram/ui/VoIPActivity;->endBtn:Landroid/view/View;
    invoke-static {v1}, Lorg/telegram/ui/VoIPActivity;->access$200(Lorg/telegram/ui/VoIPActivity;)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/VoIPActivity$3$1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/VoIPActivity$3$1;-><init>(Lorg/telegram/ui/VoIPActivity$3;)V

    const-wide/16 v4, 0x64

    invoke-virtual {v1, v2, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 222
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_4d
    :goto_4d
    return-void

    .line 220
    :cond_4e
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v1

    if-eqz v1, :cond_4d

    .line 221
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/voip/VoIPService;->hangUp()V

    goto :goto_4d
.end method
