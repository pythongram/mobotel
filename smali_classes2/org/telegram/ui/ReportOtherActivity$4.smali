.class Lorg/telegram/ui/ReportOtherActivity$4;
.super Ljava/lang/Object;
.source "ReportOtherActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ReportOtherActivity;->onTransitionAnimationEnd(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ReportOtherActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ReportOtherActivity;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/ReportOtherActivity;

    .prologue
    .line 143
    iput-object p1, p0, Lorg/telegram/ui/ReportOtherActivity$4;->this$0:Lorg/telegram/ui/ReportOtherActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 146
    iget-object v0, p0, Lorg/telegram/ui/ReportOtherActivity$4;->this$0:Lorg/telegram/ui/ReportOtherActivity;

    # getter for: Lorg/telegram/ui/ReportOtherActivity;->firstNameField:Landroid/widget/EditText;
    invoke-static {v0}, Lorg/telegram/ui/ReportOtherActivity;->access$000(Lorg/telegram/ui/ReportOtherActivity;)Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 147
    iget-object v0, p0, Lorg/telegram/ui/ReportOtherActivity$4;->this$0:Lorg/telegram/ui/ReportOtherActivity;

    # getter for: Lorg/telegram/ui/ReportOtherActivity;->firstNameField:Landroid/widget/EditText;
    invoke-static {v0}, Lorg/telegram/ui/ReportOtherActivity;->access$000(Lorg/telegram/ui/ReportOtherActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 148
    iget-object v0, p0, Lorg/telegram/ui/ReportOtherActivity$4;->this$0:Lorg/telegram/ui/ReportOtherActivity;

    # getter for: Lorg/telegram/ui/ReportOtherActivity;->firstNameField:Landroid/widget/EditText;
    invoke-static {v0}, Lorg/telegram/ui/ReportOtherActivity;->access$000(Lorg/telegram/ui/ReportOtherActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)V

    .line 150
    :cond_1a
    return-void
.end method
