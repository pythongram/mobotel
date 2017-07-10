.class Lorg/telegram/ui/ActionBar/ActionBarMenuItem$8;
.super Ljava/lang/Object;
.source "ActionBarMenuItem.java"

# interfaces
.implements Landroid/text/TextWatcher;


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
    .line 475
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$8;->this$0:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 494
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 479
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 7
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 483
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$8;->this$0:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    # getter for: Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->listener:Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->access$700(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 484
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$8;->this$0:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    # getter for: Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->listener:Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->access$700(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$8;->this$0:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    # getter for: Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchField:Landroid/widget/EditText;
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->access$600(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;->onTextChanged(Landroid/widget/EditText;)V

    .line 486
    :cond_17
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$8;->this$0:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    # getter for: Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->clearButton:Landroid/widget/ImageView;
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->access$800(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_33

    .line 487
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$8;->this$0:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    # getter for: Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->clearButton:Landroid/widget/ImageView;
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->access$800(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)Landroid/widget/ImageView;

    move-result-object v1

    if-eqz p1, :cond_2d

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_34

    :cond_2d
    const v0, 0x3f19999a

    :goto_30
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 489
    :cond_33
    return-void

    .line 487
    :cond_34
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_30
.end method
