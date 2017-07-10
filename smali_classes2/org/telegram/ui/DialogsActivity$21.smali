.class Lorg/telegram/ui/DialogsActivity$21;
.super Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;
.source "DialogsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/DialogsActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/DialogsActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/DialogsActivity;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/DialogsActivity;

    .prologue
    .line 1366
    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity$21;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .registers 5
    .param p1, "id"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1369
    const/4 v2, -0x1

    if-ne p1, v2, :cond_29

    .line 1370
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$21;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->onlySelect:Z
    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$2100(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1371
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$21;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/DialogsActivity;->finishFragment()V

    .line 1383
    :cond_12
    :goto_12
    return-void

    .line 1372
    :cond_13
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$21;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->parentLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;
    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$2900(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 1373
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$21;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->parentLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;
    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$3000(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->getDrawerLayoutContainer()Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->openDrawer(Z)V

    goto :goto_12

    .line 1375
    :cond_29
    if-ne p1, v0, :cond_3c

    .line 1376
    sget-boolean v2, Lorg/telegram/messenger/UserConfig;->appLocked:Z

    if-nez v2, :cond_3a

    :goto_2f
    sput-boolean v0, Lorg/telegram/messenger/UserConfig;->appLocked:Z

    .line 1377
    invoke-static {v1}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    .line 1378
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$21;->this$0:Lorg/telegram/ui/DialogsActivity;

    # invokes: Lorg/telegram/ui/DialogsActivity;->updatePasscodeButton()V
    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$2300(Lorg/telegram/ui/DialogsActivity;)V

    goto :goto_12

    :cond_3a
    move v0, v1

    .line 1376
    goto :goto_2f

    .line 1380
    :cond_3c
    const/4 v0, 0x3

    if-ne p1, v0, :cond_12

    .line 1381
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$21;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/DialogsActivity;->changeGhostModeState()V

    goto :goto_12
.end method
