.class Lorg/telegram/ui/ThemeActivity$2$3$1;
.super Ljava/lang/Object;
.source "ThemeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ThemeActivity$2$3;->onShow(Landroid/content/DialogInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/telegram/ui/ThemeActivity$2$3;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ThemeActivity$2$3;)V
    .registers 2
    .param p1, "this$2"    # Lorg/telegram/ui/ThemeActivity$2$3;

    .prologue
    .line 141
    iput-object p1, p0, Lorg/telegram/ui/ThemeActivity$2$3$1;->this$2:Lorg/telegram/ui/ThemeActivity$2$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 144
    iget-object v0, p0, Lorg/telegram/ui/ThemeActivity$2$3$1;->this$2:Lorg/telegram/ui/ThemeActivity$2$3;

    iget-object v0, v0, Lorg/telegram/ui/ThemeActivity$2$3;->val$editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 145
    iget-object v0, p0, Lorg/telegram/ui/ThemeActivity$2$3$1;->this$2:Lorg/telegram/ui/ThemeActivity$2$3;

    iget-object v0, v0, Lorg/telegram/ui/ThemeActivity$2$3;->val$editText:Landroid/widget/EditText;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)V

    .line 146
    return-void
.end method
