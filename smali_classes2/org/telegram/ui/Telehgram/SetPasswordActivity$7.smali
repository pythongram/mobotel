.class Lorg/telegram/ui/Telehgram/SetPasswordActivity$7;
.super Ljava/lang/Object;
.source "SetPasswordActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Telehgram/SetPasswordActivity;->onResume()V
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
    .line 314
    iput-object p1, p0, Lorg/telegram/ui/Telehgram/SetPasswordActivity$7;->this$0:Lorg/telegram/ui/Telehgram/SetPasswordActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 317
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/SetPasswordActivity$7;->this$0:Lorg/telegram/ui/Telehgram/SetPasswordActivity;

    # getter for: Lorg/telegram/ui/Telehgram/SetPasswordActivity;->passwordEditText:Landroid/widget/EditText;
    invoke-static {v0}, Lorg/telegram/ui/Telehgram/SetPasswordActivity;->access$500(Lorg/telegram/ui/Telehgram/SetPasswordActivity;)Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 318
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/SetPasswordActivity$7;->this$0:Lorg/telegram/ui/Telehgram/SetPasswordActivity;

    # getter for: Lorg/telegram/ui/Telehgram/SetPasswordActivity;->passwordEditText:Landroid/widget/EditText;
    invoke-static {v0}, Lorg/telegram/ui/Telehgram/SetPasswordActivity;->access$500(Lorg/telegram/ui/Telehgram/SetPasswordActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 319
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/SetPasswordActivity$7;->this$0:Lorg/telegram/ui/Telehgram/SetPasswordActivity;

    # getter for: Lorg/telegram/ui/Telehgram/SetPasswordActivity;->passwordEditText:Landroid/widget/EditText;
    invoke-static {v0}, Lorg/telegram/ui/Telehgram/SetPasswordActivity;->access$500(Lorg/telegram/ui/Telehgram/SetPasswordActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)V

    .line 321
    :cond_1a
    return-void
.end method
