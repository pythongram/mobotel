.class Lorg/telegram/ui/Telehgram/SetPasswordActivity$2;
.super Ljava/lang/Object;
.source "SetPasswordActivity.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


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
    .line 178
    iput-object p1, p0, Lorg/telegram/ui/Telehgram/SetPasswordActivity$2;->this$0:Lorg/telegram/ui/Telehgram/SetPasswordActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .registers 6
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "i"    # I
    .param p3, "keyEvent"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 181
    iget-object v1, p0, Lorg/telegram/ui/Telehgram/SetPasswordActivity$2;->this$0:Lorg/telegram/ui/Telehgram/SetPasswordActivity;

    # getter for: Lorg/telegram/ui/Telehgram/SetPasswordActivity;->passcodeSetStep:I
    invoke-static {v1}, Lorg/telegram/ui/Telehgram/SetPasswordActivity;->access$200(Lorg/telegram/ui/Telehgram/SetPasswordActivity;)I

    move-result v1

    if-nez v1, :cond_f

    .line 182
    iget-object v1, p0, Lorg/telegram/ui/Telehgram/SetPasswordActivity$2;->this$0:Lorg/telegram/ui/Telehgram/SetPasswordActivity;

    # invokes: Lorg/telegram/ui/Telehgram/SetPasswordActivity;->processNext()V
    invoke-static {v1}, Lorg/telegram/ui/Telehgram/SetPasswordActivity;->access$300(Lorg/telegram/ui/Telehgram/SetPasswordActivity;)V

    .line 188
    :goto_e
    return v0

    .line 184
    :cond_f
    iget-object v1, p0, Lorg/telegram/ui/Telehgram/SetPasswordActivity$2;->this$0:Lorg/telegram/ui/Telehgram/SetPasswordActivity;

    # getter for: Lorg/telegram/ui/Telehgram/SetPasswordActivity;->passcodeSetStep:I
    invoke-static {v1}, Lorg/telegram/ui/Telehgram/SetPasswordActivity;->access$200(Lorg/telegram/ui/Telehgram/SetPasswordActivity;)I

    move-result v1

    if-ne v1, v0, :cond_1d

    .line 185
    iget-object v1, p0, Lorg/telegram/ui/Telehgram/SetPasswordActivity$2;->this$0:Lorg/telegram/ui/Telehgram/SetPasswordActivity;

    # invokes: Lorg/telegram/ui/Telehgram/SetPasswordActivity;->processDone()V
    invoke-static {v1}, Lorg/telegram/ui/Telehgram/SetPasswordActivity;->access$400(Lorg/telegram/ui/Telehgram/SetPasswordActivity;)V

    goto :goto_e

    .line 188
    :cond_1d
    const/4 v0, 0x0

    goto :goto_e
.end method
