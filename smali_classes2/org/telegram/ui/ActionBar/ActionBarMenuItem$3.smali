.class Lorg/telegram/ui/ActionBar/ActionBarMenuItem$3;
.super Ljava/lang/Object;
.source "ActionBarMenuItem.java"

# interfaces
.implements Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$OnDispatchKeyEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(ILjava/lang/String;)Landroid/widget/TextView;
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
    .line 230
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$3;->this$0:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDispatchKeyEvent(Landroid/view/KeyEvent;)V
    .registers 4
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;

    .prologue
    .line 233
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2a

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_2a

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$3;->this$0:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    # getter for: Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->access$000(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    move-result-object v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$3;->this$0:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    # getter for: Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->access$000(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 234
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$3;->this$0:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    # getter for: Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->access$000(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss()V

    .line 236
    :cond_2a
    return-void
.end method
