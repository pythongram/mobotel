.class Lorg/telegram/ui/Components/EditTextCaption$1;
.super Ljava/lang/Object;
.source "EditTextCaption.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/EditTextCaption;->overrideCallback(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode$Callback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/EditTextCaption;

.field final synthetic val$callback:Landroid/view/ActionMode$Callback;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/EditTextCaption;Landroid/view/ActionMode$Callback;)V
    .registers 3
    .param p1, "this$0"    # Lorg/telegram/ui/Components/EditTextCaption;

    .prologue
    .line 107
    iput-object p1, p0, Lorg/telegram/ui/Components/EditTextCaption$1;->this$0:Lorg/telegram/ui/Components/EditTextCaption;

    iput-object p2, p0, Lorg/telegram/ui/Components/EditTextCaption$1;->val$callback:Landroid/view/ActionMode$Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .registers 6
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 121
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x7f0e0009

    if-ne v1, v2, :cond_13

    .line 122
    iget-object v1, p0, Lorg/telegram/ui/Components/EditTextCaption$1;->this$0:Lorg/telegram/ui/Components/EditTextCaption;

    # invokes: Lorg/telegram/ui/Components/EditTextCaption;->makeSelectedRegular()V
    invoke-static {v1}, Lorg/telegram/ui/Components/EditTextCaption;->access$100(Lorg/telegram/ui/Components/EditTextCaption;)V

    .line 123
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    .line 134
    :goto_12
    return v0

    .line 125
    :cond_13
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x7f0e0006

    if-ne v1, v2, :cond_25

    .line 126
    iget-object v1, p0, Lorg/telegram/ui/Components/EditTextCaption$1;->this$0:Lorg/telegram/ui/Components/EditTextCaption;

    # invokes: Lorg/telegram/ui/Components/EditTextCaption;->makeSelectedBold()V
    invoke-static {v1}, Lorg/telegram/ui/Components/EditTextCaption;->access$200(Lorg/telegram/ui/Components/EditTextCaption;)V

    .line 127
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto :goto_12

    .line 129
    :cond_25
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x7f0e0008

    if-ne v1, v2, :cond_37

    .line 130
    iget-object v1, p0, Lorg/telegram/ui/Components/EditTextCaption$1;->this$0:Lorg/telegram/ui/Components/EditTextCaption;

    # invokes: Lorg/telegram/ui/Components/EditTextCaption;->makeSelectedItalic()V
    invoke-static {v1}, Lorg/telegram/ui/Components/EditTextCaption;->access$300(Lorg/telegram/ui/Components/EditTextCaption;)V

    .line 131
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto :goto_12

    .line 134
    :cond_37
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextCaption$1;->val$callback:Landroid/view/ActionMode$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_12
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .registers 5
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 110
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextCaption$1;->this$0:Lorg/telegram/ui/Components/EditTextCaption;

    const/4 v1, 0x1

    # setter for: Lorg/telegram/ui/Components/EditTextCaption;->copyPasteShowed:Z
    invoke-static {v0, v1}, Lorg/telegram/ui/Components/EditTextCaption;->access$002(Lorg/telegram/ui/Components/EditTextCaption;Z)Z

    .line 111
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextCaption$1;->val$callback:Landroid/view/ActionMode$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .registers 4
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 139
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextCaption$1;->this$0:Lorg/telegram/ui/Components/EditTextCaption;

    const/4 v1, 0x0

    # setter for: Lorg/telegram/ui/Components/EditTextCaption;->copyPasteShowed:Z
    invoke-static {v0, v1}, Lorg/telegram/ui/Components/EditTextCaption;->access$002(Lorg/telegram/ui/Components/EditTextCaption;Z)Z

    .line 140
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextCaption$1;->val$callback:Landroid/view/ActionMode$Callback;

    invoke-interface {v0, p1}, Landroid/view/ActionMode$Callback;->onDestroyActionMode(Landroid/view/ActionMode;)V

    .line 141
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .registers 4
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 116
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextCaption$1;->val$callback:Landroid/view/ActionMode$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method
