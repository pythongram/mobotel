.class Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ListAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "ThemeEditorView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListAdapter"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private currentCount:I

.field private items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/ui/ActionBar/ThemeDescription;",
            ">;>;"
        }
    .end annotation
.end field

.field private itemsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/ui/ActionBar/ThemeDescription;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic this$1:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;Landroid/content/Context;[Lorg/telegram/ui/ActionBar/ThemeDescription;)V
    .registers 9
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "descriptions"    # [Lorg/telegram/ui/ActionBar/ThemeDescription;

    .prologue
    .line 832
    iput-object p1, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ListAdapter;->this$1:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 829
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ListAdapter;->items:Ljava/util/ArrayList;

    .line 830
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ListAdapter;->itemsMap:Ljava/util/HashMap;

    .line 833
    iput-object p2, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ListAdapter;->context:Landroid/content/Context;

    .line 834
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_16
    array-length v4, p3

    if-ge v0, v4, :cond_3e

    .line 835
    aget-object v2, p3, v0

    .line 836
    .local v2, "description":Lorg/telegram/ui/ActionBar/ThemeDescription;
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ThemeDescription;->getCurrentKey()Ljava/lang/String;

    move-result-object v3

    .line 837
    .local v3, "key":Ljava/lang/String;
    iget-object v4, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ListAdapter;->itemsMap:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 838
    .local v1, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/ui/ActionBar/ThemeDescription;>;"
    if-nez v1, :cond_38

    .line 839
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/ui/ActionBar/ThemeDescription;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 840
    .restart local v1    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/ui/ActionBar/ThemeDescription;>;"
    iget-object v4, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ListAdapter;->itemsMap:Ljava/util/HashMap;

    invoke-virtual {v4, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 841
    iget-object v4, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ListAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 843
    :cond_38
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 834
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 845
    .end local v1    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/ui/ActionBar/ThemeDescription;>;"
    .end local v2    # "description":Lorg/telegram/ui/ActionBar/ThemeDescription;
    .end local v3    # "key":Ljava/lang/String;
    :cond_3e
    return-void
.end method


# virtual methods
.method public getItem(I)Ljava/util/ArrayList;
    .registers 3
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/ui/ActionBar/ThemeDescription;",
            ">;"
        }
    .end annotation

    .prologue
    .line 853
    if-ltz p1, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ListAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_c

    .line 854
    :cond_a
    const/4 v0, 0x0

    .line 856
    :goto_b
    return-object v0

    :cond_c
    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ListAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    goto :goto_b
.end method

.method public getItemCount()I
    .registers 2

    .prologue
    .line 849
    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ListAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .registers 3
    .param p1, "i"    # I

    .prologue
    .line 886
    const/4 v0, 0x0

    return v0
.end method

.method public isEnabled(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)Z
    .registers 3
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .prologue
    .line 861
    const/4 v0, 0x1

    return v0
.end method

.method public onBindViewHolder(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;I)V
    .registers 8
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 873
    iget-object v3, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ListAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 874
    .local v0, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/ui/ActionBar/ThemeDescription;>;"
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 876
    .local v2, "description":Lorg/telegram/ui/ActionBar/ThemeDescription;
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ThemeDescription;->getCurrentKey()Ljava/lang/String;

    move-result-object v3

    const-string v4, "chat_wallpaper"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 877
    const/4 v1, 0x0

    .line 881
    .local v1, "color":I
    :goto_1c
    iget-object v3, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v3, Lorg/telegram/ui/Cells/TextColorThemeCell;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ThemeDescription;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Lorg/telegram/ui/Cells/TextColorThemeCell;->setTextAndColor(Ljava/lang/String;I)V

    .line 882
    return-void

    .line 879
    .end local v1    # "color":I
    :cond_28
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ThemeDescription;->getSetColor()I

    move-result v1

    .restart local v1    # "color":I
    goto :goto_1c
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .registers 7
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 866
    new-instance v0, Lorg/telegram/ui/Cells/TextColorThemeCell;

    iget-object v1, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ListAdapter;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/TextColorThemeCell;-><init>(Landroid/content/Context;)V

    .line 867
    .local v0, "view":Landroid/view/View;
    new-instance v1, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 868
    new-instance v1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object v1
.end method
