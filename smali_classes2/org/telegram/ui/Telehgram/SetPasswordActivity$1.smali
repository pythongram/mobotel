.class Lorg/telegram/ui/Telehgram/SetPasswordActivity$1;
.super Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;
.source "SetPasswordActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Telehgram/SetPasswordActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Telehgram/SetPasswordActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Telehgram/SetPasswordActivity;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/Telehgram/SetPasswordActivity;

    .prologue
    .line 100
    iput-object p1, p0, Lorg/telegram/ui/Telehgram/SetPasswordActivity$1;->this$0:Lorg/telegram/ui/Telehgram/SetPasswordActivity;

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .registers 6
    .param p1, "id"    # I

    .prologue
    const/4 v3, 0x1

    .line 103
    const/4 v0, -0x1

    if-ne p1, v0, :cond_24

    .line 104
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/SetPasswordActivity$1;->this$0:Lorg/telegram/ui/Telehgram/SetPasswordActivity;

    # getter for: Lorg/telegram/ui/Telehgram/SetPasswordActivity;->type:I
    invoke-static {v0}, Lorg/telegram/ui/Telehgram/SetPasswordActivity;->access$000(Lorg/telegram/ui/Telehgram/SetPasswordActivity;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1e

    .line 105
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/SetPasswordActivity$1;->this$0:Lorg/telegram/ui/Telehgram/SetPasswordActivity;

    new-instance v1, Lorg/telegram/ui/DialogsActivity;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/telegram/ui/DialogsActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v0, v1, v3}, Lorg/telegram/ui/Telehgram/SetPasswordActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    .line 106
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/SetPasswordActivity$1;->this$0:Lorg/telegram/ui/Telehgram/SetPasswordActivity;

    # invokes: Lorg/telegram/ui/Telehgram/SetPasswordActivity;->restartApp()V
    invoke-static {v0}, Lorg/telegram/ui/Telehgram/SetPasswordActivity;->access$100(Lorg/telegram/ui/Telehgram/SetPasswordActivity;)V

    .line 117
    :cond_1d
    :goto_1d
    return-void

    .line 108
    :cond_1e
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/SetPasswordActivity$1;->this$0:Lorg/telegram/ui/Telehgram/SetPasswordActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/Telehgram/SetPasswordActivity;->finishFragment()V

    goto :goto_1d

    .line 110
    :cond_24
    if-ne p1, v3, :cond_1d

    .line 111
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/SetPasswordActivity$1;->this$0:Lorg/telegram/ui/Telehgram/SetPasswordActivity;

    # getter for: Lorg/telegram/ui/Telehgram/SetPasswordActivity;->passcodeSetStep:I
    invoke-static {v0}, Lorg/telegram/ui/Telehgram/SetPasswordActivity;->access$200(Lorg/telegram/ui/Telehgram/SetPasswordActivity;)I

    move-result v0

    if-nez v0, :cond_34

    .line 112
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/SetPasswordActivity$1;->this$0:Lorg/telegram/ui/Telehgram/SetPasswordActivity;

    # invokes: Lorg/telegram/ui/Telehgram/SetPasswordActivity;->processNext()V
    invoke-static {v0}, Lorg/telegram/ui/Telehgram/SetPasswordActivity;->access$300(Lorg/telegram/ui/Telehgram/SetPasswordActivity;)V

    goto :goto_1d

    .line 113
    :cond_34
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/SetPasswordActivity$1;->this$0:Lorg/telegram/ui/Telehgram/SetPasswordActivity;

    # getter for: Lorg/telegram/ui/Telehgram/SetPasswordActivity;->passcodeSetStep:I
    invoke-static {v0}, Lorg/telegram/ui/Telehgram/SetPasswordActivity;->access$200(Lorg/telegram/ui/Telehgram/SetPasswordActivity;)I

    move-result v0

    if-ne v0, v3, :cond_1d

    .line 114
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/SetPasswordActivity$1;->this$0:Lorg/telegram/ui/Telehgram/SetPasswordActivity;

    # invokes: Lorg/telegram/ui/Telehgram/SetPasswordActivity;->processDone()V
    invoke-static {v0}, Lorg/telegram/ui/Telehgram/SetPasswordActivity;->access$400(Lorg/telegram/ui/Telehgram/SetPasswordActivity;)V

    goto :goto_1d
.end method
