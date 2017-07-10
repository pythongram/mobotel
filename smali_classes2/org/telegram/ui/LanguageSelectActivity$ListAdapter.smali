.class Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "LanguageSelectActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/LanguageSelectActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private search:Z

.field final synthetic this$0:Lorg/telegram/ui/LanguageSelectActivity;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/LanguageSelectActivity;Landroid/content/Context;Z)V
    .registers 4
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "isSearch"    # Z

    .prologue
    .line 272
    iput-object p1, p0, Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;->this$0:Lorg/telegram/ui/LanguageSelectActivity;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 273
    iput-object p2, p0, Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;->mContext:Landroid/content/Context;

    .line 274
    iput-boolean p3, p0, Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;->search:Z

    .line 275
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 284
    iget-boolean v1, p0, Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;->search:Z

    if-eqz v1, :cond_15

    .line 285
    iget-object v1, p0, Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;->this$0:Lorg/telegram/ui/LanguageSelectActivity;

    iget-object v1, v1, Lorg/telegram/ui/LanguageSelectActivity;->searchResult:Ljava/util/ArrayList;

    if-nez v1, :cond_c

    .line 293
    :cond_b
    :goto_b
    return v0

    .line 288
    :cond_c
    iget-object v0, p0, Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;->this$0:Lorg/telegram/ui/LanguageSelectActivity;

    iget-object v0, v0, Lorg/telegram/ui/LanguageSelectActivity;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_b

    .line 290
    :cond_15
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/LocaleController;->sortedLanguages:Ljava/util/ArrayList;

    if-eqz v1, :cond_b

    .line 293
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/LocaleController;->sortedLanguages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_b
.end method

.method public getItemViewType(I)I
    .registers 3
    .param p1, "i"    # I

    .prologue
    .line 319
    const/4 v0, 0x0

    return v0
.end method

.method public isEnabled(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)Z
    .registers 3
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .prologue
    .line 279
    const/4 v0, 0x1

    return v0
.end method

.method public onBindViewHolder(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;I)V
    .registers 9
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 304
    iget-object v2, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v2, Lorg/telegram/ui/Cells/TextSettingsCell;

    .line 307
    .local v2, "textSettingsCell":Lorg/telegram/ui/Cells/TextSettingsCell;
    iget-boolean v5, p0, Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;->search:Z

    if-eqz v5, :cond_2b

    .line 308
    iget-object v5, p0, Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;->this$0:Lorg/telegram/ui/LanguageSelectActivity;

    iget-object v5, v5, Lorg/telegram/ui/LanguageSelectActivity;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/LocaleController$LocaleInfo;

    .line 309
    .local v1, "localeInfo":Lorg/telegram/messenger/LocaleController$LocaleInfo;
    iget-object v5, p0, Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;->this$0:Lorg/telegram/ui/LanguageSelectActivity;

    iget-object v5, v5, Lorg/telegram/ui/LanguageSelectActivity;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ne p2, v5, :cond_29

    move v0, v3

    .line 314
    .local v0, "last":Z
    :goto_21
    iget-object v5, v1, Lorg/telegram/messenger/LocaleController$LocaleInfo;->name:Ljava/lang/String;

    if-nez v0, :cond_49

    :goto_25
    invoke-virtual {v2, v5, v3}, Lorg/telegram/ui/Cells/TextSettingsCell;->setText(Ljava/lang/String;Z)V

    .line 315
    return-void

    .end local v0    # "last":Z
    :cond_29
    move v0, v4

    .line 309
    goto :goto_21

    .line 311
    .end local v1    # "localeInfo":Lorg/telegram/messenger/LocaleController$LocaleInfo;
    :cond_2b
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v5

    iget-object v5, v5, Lorg/telegram/messenger/LocaleController;->sortedLanguages:Ljava/util/ArrayList;

    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/LocaleController$LocaleInfo;

    .line 312
    .restart local v1    # "localeInfo":Lorg/telegram/messenger/LocaleController$LocaleInfo;
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v5

    iget-object v5, v5, Lorg/telegram/messenger/LocaleController;->sortedLanguages:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ne p2, v5, :cond_47

    move v0, v3

    .restart local v0    # "last":Z
    :goto_46
    goto :goto_21

    .end local v0    # "last":Z
    :cond_47
    move v0, v4

    goto :goto_46

    .restart local v0    # "last":Z
    :cond_49
    move v3, v4

    .line 314
    goto :goto_25
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .registers 6
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 299
    new-instance v0, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    new-instance v1, Lorg/telegram/ui/Cells/TextSettingsCell;

    iget-object v2, p0, Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lorg/telegram/ui/Cells/TextSettingsCell;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object v0
.end method
