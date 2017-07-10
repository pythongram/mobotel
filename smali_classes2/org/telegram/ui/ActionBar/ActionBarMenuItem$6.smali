.class Lorg/telegram/ui/ActionBar/ActionBarMenuItem$6;
.super Ljava/lang/Object;
.source "ActionBarMenuItem.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;


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
    .line 446
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$6;->this$0:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .registers 4
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 460
    const/4 v0, 0x0

    return v0
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .registers 4
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 456
    const/4 v0, 0x0

    return v0
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .registers 2
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 453
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .registers 4
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 448
    const/4 v0, 0x0

    return v0
.end method
