.class Lorg/telegram/ui/ChangeNameActivity$6;
.super Ljava/lang/Object;
.source "ChangeNameActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChangeNameActivity;->onTransitionAnimationEnd(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChangeNameActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChangeNameActivity;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/ChangeNameActivity;

    .prologue
    .line 195
    iput-object p1, p0, Lorg/telegram/ui/ChangeNameActivity$6;->this$0:Lorg/telegram/ui/ChangeNameActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 198
    iget-object v0, p0, Lorg/telegram/ui/ChangeNameActivity$6;->this$0:Lorg/telegram/ui/ChangeNameActivity;

    # getter for: Lorg/telegram/ui/ChangeNameActivity;->firstNameField:Landroid/widget/EditText;
    invoke-static {v0}, Lorg/telegram/ui/ChangeNameActivity;->access$000(Lorg/telegram/ui/ChangeNameActivity;)Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 199
    iget-object v0, p0, Lorg/telegram/ui/ChangeNameActivity$6;->this$0:Lorg/telegram/ui/ChangeNameActivity;

    # getter for: Lorg/telegram/ui/ChangeNameActivity;->firstNameField:Landroid/widget/EditText;
    invoke-static {v0}, Lorg/telegram/ui/ChangeNameActivity;->access$000(Lorg/telegram/ui/ChangeNameActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 200
    iget-object v0, p0, Lorg/telegram/ui/ChangeNameActivity$6;->this$0:Lorg/telegram/ui/ChangeNameActivity;

    # getter for: Lorg/telegram/ui/ChangeNameActivity;->firstNameField:Landroid/widget/EditText;
    invoke-static {v0}, Lorg/telegram/ui/ChangeNameActivity;->access$000(Lorg/telegram/ui/ChangeNameActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)V

    .line 202
    :cond_1a
    return-void
.end method
