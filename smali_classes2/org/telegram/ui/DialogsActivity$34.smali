.class Lorg/telegram/ui/DialogsActivity$34;
.super Ljava/lang/Object;
.source "DialogsActivity.java"

# interfaces
.implements Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/DialogsActivity;->getThemeDescriptions()[Lorg/telegram/ui/ActionBar/ThemeDescription;
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
    .line 2621
    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity$34;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public didSetColor(I)V
    .registers 8
    .param p1, "color"    # I

    .prologue
    const/4 v5, 0x0

    .line 2624
    iget-object v4, p0, Lorg/telegram/ui/DialogsActivity$34;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v4}, Lorg/telegram/ui/DialogsActivity;->access$1600(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/Components/RecyclerListView;->getChildCount()I

    move-result v2

    .line 2625
    .local v2, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_c
    if-ge v0, v2, :cond_2e

    .line 2626
    iget-object v4, p0, Lorg/telegram/ui/DialogsActivity$34;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v4}, Lorg/telegram/ui/DialogsActivity;->access$1600(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v4

    invoke-virtual {v4, v0}, Lorg/telegram/ui/Components/RecyclerListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2627
    .local v1, "child":Landroid/view/View;
    instance-of v4, v1, Lorg/telegram/ui/Cells/ProfileSearchCell;

    if-eqz v4, :cond_24

    .line 2628
    check-cast v1, Lorg/telegram/ui/Cells/ProfileSearchCell;

    .end local v1    # "child":Landroid/view/View;
    invoke-virtual {v1, v5}, Lorg/telegram/ui/Cells/ProfileSearchCell;->update(I)V

    .line 2625
    :cond_21
    :goto_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 2629
    .restart local v1    # "child":Landroid/view/View;
    :cond_24
    instance-of v4, v1, Lorg/telegram/ui/Cells/DialogCell;

    if-eqz v4, :cond_21

    .line 2630
    check-cast v1, Lorg/telegram/ui/Cells/DialogCell;

    .end local v1    # "child":Landroid/view/View;
    invoke-virtual {v1, v5}, Lorg/telegram/ui/Cells/DialogCell;->update(I)V

    goto :goto_21

    .line 2633
    :cond_2e
    iget-object v4, p0, Lorg/telegram/ui/DialogsActivity$34;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->dialogsSearchAdapter:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;
    invoke-static {v4}, Lorg/telegram/ui/DialogsActivity;->access$2800(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->getInnerListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v3

    .line 2634
    .local v3, "recyclerListView":Lorg/telegram/ui/Components/RecyclerListView;
    if-eqz v3, :cond_51

    .line 2635
    invoke-virtual {v3}, Lorg/telegram/ui/Components/RecyclerListView;->getChildCount()I

    move-result v2

    .line 2636
    const/4 v0, 0x0

    :goto_3f
    if-ge v0, v2, :cond_51

    .line 2637
    invoke-virtual {v3, v0}, Lorg/telegram/ui/Components/RecyclerListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2638
    .restart local v1    # "child":Landroid/view/View;
    instance-of v4, v1, Lorg/telegram/ui/Cells/HintDialogCell;

    if-eqz v4, :cond_4e

    .line 2639
    check-cast v1, Lorg/telegram/ui/Cells/HintDialogCell;

    .end local v1    # "child":Landroid/view/View;
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/HintDialogCell;->update()V

    .line 2636
    :cond_4e
    add-int/lit8 v0, v0, 0x1

    goto :goto_3f

    .line 2643
    :cond_51
    return-void
.end method
