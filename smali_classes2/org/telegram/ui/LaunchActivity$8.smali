.class Lorg/telegram/ui/LaunchActivity$8;
.super Ljava/lang/Object;
.source "LaunchActivity.java"

# interfaces
.implements Lorg/telegram/ui/Components/PasscodeView$PasscodeViewDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/LaunchActivity;->showPasscodeActivity()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/LaunchActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/LaunchActivity;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/LaunchActivity;

    .prologue
    .line 743
    iput-object p1, p0, Lorg/telegram/ui/LaunchActivity$8;->this$0:Lorg/telegram/ui/LaunchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public didAcceptedPassword()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 746
    sput-boolean v4, Lorg/telegram/messenger/UserConfig;->isWaitingForPasscodeEnter:Z

    .line 747
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity$8;->this$0:Lorg/telegram/ui/LaunchActivity;

    # getter for: Lorg/telegram/ui/LaunchActivity;->passcodeSaveIntent:Landroid/content/Intent;
    invoke-static {v0}, Lorg/telegram/ui/LaunchActivity;->access$1000(Lorg/telegram/ui/LaunchActivity;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_29

    .line 748
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity$8;->this$0:Lorg/telegram/ui/LaunchActivity;

    iget-object v1, p0, Lorg/telegram/ui/LaunchActivity$8;->this$0:Lorg/telegram/ui/LaunchActivity;

    # getter for: Lorg/telegram/ui/LaunchActivity;->passcodeSaveIntent:Landroid/content/Intent;
    invoke-static {v1}, Lorg/telegram/ui/LaunchActivity;->access$1000(Lorg/telegram/ui/LaunchActivity;)Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity$8;->this$0:Lorg/telegram/ui/LaunchActivity;

    # getter for: Lorg/telegram/ui/LaunchActivity;->passcodeSaveIntentIsNew:Z
    invoke-static {v2}, Lorg/telegram/ui/LaunchActivity;->access$1100(Lorg/telegram/ui/LaunchActivity;)Z

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity$8;->this$0:Lorg/telegram/ui/LaunchActivity;

    # getter for: Lorg/telegram/ui/LaunchActivity;->passcodeSaveIntentIsRestore:Z
    invoke-static {v3}, Lorg/telegram/ui/LaunchActivity;->access$1200(Lorg/telegram/ui/LaunchActivity;)Z

    move-result v3

    # invokes: Lorg/telegram/ui/LaunchActivity;->handleIntent(Landroid/content/Intent;ZZZ)Z
    invoke-static {v0, v1, v2, v3, v5}, Lorg/telegram/ui/LaunchActivity;->access$800(Lorg/telegram/ui/LaunchActivity;Landroid/content/Intent;ZZZ)Z

    .line 749
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity$8;->this$0:Lorg/telegram/ui/LaunchActivity;

    const/4 v1, 0x0

    # setter for: Lorg/telegram/ui/LaunchActivity;->passcodeSaveIntent:Landroid/content/Intent;
    invoke-static {v0, v1}, Lorg/telegram/ui/LaunchActivity;->access$1002(Lorg/telegram/ui/LaunchActivity;Landroid/content/Intent;)Landroid/content/Intent;

    .line 751
    :cond_29
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity$8;->this$0:Lorg/telegram/ui/LaunchActivity;

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    invoke-virtual {v0, v5, v4}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->setAllowOpenDrawer(ZZ)V

    .line 752
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity$8;->this$0:Lorg/telegram/ui/LaunchActivity;

    # getter for: Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;
    invoke-static {v0}, Lorg/telegram/ui/LaunchActivity;->access$100(Lorg/telegram/ui/LaunchActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->showLastFragment()V

    .line 753
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_51

    .line 754
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity$8;->this$0:Lorg/telegram/ui/LaunchActivity;

    # getter for: Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;
    invoke-static {v0}, Lorg/telegram/ui/LaunchActivity;->access$600(Lorg/telegram/ui/LaunchActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->showLastFragment()V

    .line 755
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity$8;->this$0:Lorg/telegram/ui/LaunchActivity;

    # getter for: Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;
    invoke-static {v0}, Lorg/telegram/ui/LaunchActivity;->access$300(Lorg/telegram/ui/LaunchActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->showLastFragment()V

    .line 757
    :cond_51
    return-void
.end method
