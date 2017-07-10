.class Lorg/telegram/ui/ActionBar/ActionBarMenuItem$7;
.super Ljava/lang/Object;
.source "ActionBarMenuItem.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIsSearchField(Z)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .prologue
    .line 463
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$7;->this$0:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .registers 6
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 466
    if-eqz p3, :cond_3f

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_11

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x54

    if-eq v0, v1, :cond_1f

    :cond_11
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_3f

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x42

    if-ne v0, v1, :cond_3f

    .line 467
    :cond_1f
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$7;->this$0:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    # getter for: Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchField:Landroid/widget/EditText;
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->access$600(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)Landroid/widget/EditText;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 468
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$7;->this$0:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    # getter for: Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->listener:Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->access$700(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;

    move-result-object v0

    if-eqz v0, :cond_3f

    .line 469
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$7;->this$0:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    # getter for: Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->listener:Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->access$700(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$7;->this$0:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    # getter for: Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchField:Landroid/widget/EditText;
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->access$600(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;->onSearchPressed(Landroid/widget/EditText;)V

    .line 472
    :cond_3f
    const/4 v0, 0x0

    return v0
.end method
