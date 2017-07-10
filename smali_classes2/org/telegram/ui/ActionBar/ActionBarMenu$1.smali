.class Lorg/telegram/ui/ActionBar/ActionBarMenu$1;
.super Ljava/lang/Object;
.source "ActionBarMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(IIILandroid/graphics/drawable/Drawable;I)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ActionBar/ActionBarMenu;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ActionBar/ActionBarMenu;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/ActionBar/ActionBarMenu;

    .prologue
    .line 81
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenu$1;->this$0:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 84
    move-object v0, p1

    check-cast v0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 85
    .local v0, "item":Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->hasSubMenu()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 86
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenu$1;->this$0:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    iget-object v1, v1, Lorg/telegram/ui/ActionBar/ActionBarMenu;->parentActionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-object v1, v1, Lorg/telegram/ui/ActionBar/ActionBar;->actionBarMenuOnItemClick:Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;->canOpenMenu()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 87
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->toggleSubMenu()V

    .line 94
    :cond_18
    :goto_18
    return-void

    .line 89
    :cond_19
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->isSearchField()Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 90
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenu$1;->this$0:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    iget-object v1, v1, Lorg/telegram/ui/ActionBar/ActionBarMenu;->parentActionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->toggleSearch(Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->onSearchFieldVisibilityChanged(Z)V

    goto :goto_18

    .line 92
    :cond_2c
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarMenu$1;->this$0:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->onItemClick(I)V

    goto :goto_18
.end method
