.class public Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;
.super Ljava/lang/Object;
.source "ActionBarMenuItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ActionBarMenuItemSearchListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canCollapseSearch()Z
    .registers 2

    .prologue
    .line 52
    const/4 v0, 0x1

    return v0
.end method

.method public onSearchCollapse()V
    .registers 1

    .prologue
    .line 57
    return-void
.end method

.method public onSearchExpand()V
    .registers 1

    .prologue
    .line 49
    return-void
.end method

.method public onSearchPressed(Landroid/widget/EditText;)V
    .registers 2
    .param p1, "editText"    # Landroid/widget/EditText;

    .prologue
    .line 63
    return-void
.end method

.method public onTextChanged(Landroid/widget/EditText;)V
    .registers 2
    .param p1, "editText"    # Landroid/widget/EditText;

    .prologue
    .line 60
    return-void
.end method
