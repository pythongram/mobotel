.class Lorg/telegram/ui/LanguageSelectActivity$3;
.super Ljava/lang/Object;
.source "LanguageSelectActivity.java"

# interfaces
.implements Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/LanguageSelectActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/LanguageSelectActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/LanguageSelectActivity;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/LanguageSelectActivity;

    .prologue
    .line 123
    iput-object p1, p0, Lorg/telegram/ui/LanguageSelectActivity$3;->this$0:Lorg/telegram/ui/LanguageSelectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;I)V
    .registers 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 126
    const/4 v0, 0x0

    .line 127
    .local v0, "localeInfo":Lorg/telegram/messenger/LocaleController$LocaleInfo;
    iget-object v1, p0, Lorg/telegram/ui/LanguageSelectActivity$3;->this$0:Lorg/telegram/ui/LanguageSelectActivity;

    # getter for: Lorg/telegram/ui/LanguageSelectActivity;->searching:Z
    invoke-static {v1}, Lorg/telegram/ui/LanguageSelectActivity;->access$000(Lorg/telegram/ui/LanguageSelectActivity;)Z

    move-result v1

    if-eqz v1, :cond_41

    iget-object v1, p0, Lorg/telegram/ui/LanguageSelectActivity$3;->this$0:Lorg/telegram/ui/LanguageSelectActivity;

    # getter for: Lorg/telegram/ui/LanguageSelectActivity;->searchWas:Z
    invoke-static {v1}, Lorg/telegram/ui/LanguageSelectActivity;->access$100(Lorg/telegram/ui/LanguageSelectActivity;)Z

    move-result v1

    if-eqz v1, :cond_41

    .line 128
    if-ltz p2, :cond_27

    iget-object v1, p0, Lorg/telegram/ui/LanguageSelectActivity$3;->this$0:Lorg/telegram/ui/LanguageSelectActivity;

    iget-object v1, v1, Lorg/telegram/ui/LanguageSelectActivity;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p2, v1, :cond_27

    .line 129
    iget-object v1, p0, Lorg/telegram/ui/LanguageSelectActivity$3;->this$0:Lorg/telegram/ui/LanguageSelectActivity;

    iget-object v1, v1, Lorg/telegram/ui/LanguageSelectActivity;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "localeInfo":Lorg/telegram/messenger/LocaleController$LocaleInfo;
    check-cast v0, Lorg/telegram/messenger/LocaleController$LocaleInfo;

    .line 136
    .restart local v0    # "localeInfo":Lorg/telegram/messenger/LocaleController$LocaleInfo;
    :cond_27
    :goto_27
    if-eqz v0, :cond_3b

    .line 137
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lorg/telegram/messenger/LocaleController;->applyLanguage(Lorg/telegram/messenger/LocaleController$LocaleInfo;Z)V

    .line 138
    iget-object v1, p0, Lorg/telegram/ui/LanguageSelectActivity$3;->this$0:Lorg/telegram/ui/LanguageSelectActivity;

    # getter for: Lorg/telegram/ui/LanguageSelectActivity;->parentLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;
    invoke-static {v1}, Lorg/telegram/ui/LanguageSelectActivity;->access$600(Lorg/telegram/ui/LanguageSelectActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->rebuildAllFragmentViews(Z)V

    .line 140
    :cond_3b
    iget-object v1, p0, Lorg/telegram/ui/LanguageSelectActivity$3;->this$0:Lorg/telegram/ui/LanguageSelectActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/LanguageSelectActivity;->finishFragment()V

    .line 141
    return-void

    .line 132
    :cond_41
    if-ltz p2, :cond_27

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/LocaleController;->sortedLanguages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p2, v1, :cond_27

    .line 133
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/LocaleController;->sortedLanguages:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "localeInfo":Lorg/telegram/messenger/LocaleController$LocaleInfo;
    check-cast v0, Lorg/telegram/messenger/LocaleController$LocaleInfo;

    .restart local v0    # "localeInfo":Lorg/telegram/messenger/LocaleController$LocaleInfo;
    goto :goto_27
.end method
