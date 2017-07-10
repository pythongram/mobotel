.class Lorg/telegram/ui/Components/PasscodeView$9;
.super Ljava/lang/Object;
.source "PasscodeView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/PasscodeView;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/PasscodeView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/PasscodeView;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/Components/PasscodeView;

    .prologue
    .line 807
    iput-object p1, p0, Lorg/telegram/ui/Components/PasscodeView$9;->this$0:Lorg/telegram/ui/Components/PasscodeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 810
    iget-object v0, p0, Lorg/telegram/ui/Components/PasscodeView$9;->this$0:Lorg/telegram/ui/Components/PasscodeView;

    # getter for: Lorg/telegram/ui/Components/PasscodeView;->passwordEditText:Landroid/widget/EditText;
    invoke-static {v0}, Lorg/telegram/ui/Components/PasscodeView;->access$500(Lorg/telegram/ui/Components/PasscodeView;)Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 811
    iget-object v0, p0, Lorg/telegram/ui/Components/PasscodeView$9;->this$0:Lorg/telegram/ui/Components/PasscodeView;

    # getter for: Lorg/telegram/ui/Components/PasscodeView;->passwordEditText:Landroid/widget/EditText;
    invoke-static {v0}, Lorg/telegram/ui/Components/PasscodeView;->access$500(Lorg/telegram/ui/Components/PasscodeView;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 812
    iget-object v0, p0, Lorg/telegram/ui/Components/PasscodeView$9;->this$0:Lorg/telegram/ui/Components/PasscodeView;

    # getter for: Lorg/telegram/ui/Components/PasscodeView;->passwordEditText:Landroid/widget/EditText;
    invoke-static {v0}, Lorg/telegram/ui/Components/PasscodeView;->access$500(Lorg/telegram/ui/Components/PasscodeView;)Landroid/widget/EditText;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)V

    .line 814
    :cond_1a
    return-void
.end method
