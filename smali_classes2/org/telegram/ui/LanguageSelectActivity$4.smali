.class Lorg/telegram/ui/LanguageSelectActivity$4;
.super Ljava/lang/Object;
.source "LanguageSelectActivity.java"

# interfaces
.implements Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;


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
    .line 144
    iput-object p1, p0, Lorg/telegram/ui/LanguageSelectActivity$4;->this$0:Lorg/telegram/ui/LanguageSelectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;I)Z
    .registers 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 147
    const/4 v2, 0x0

    .line 148
    .local v2, "localeInfo":Lorg/telegram/messenger/LocaleController$LocaleInfo;
    iget-object v3, p0, Lorg/telegram/ui/LanguageSelectActivity$4;->this$0:Lorg/telegram/ui/LanguageSelectActivity;

    # getter for: Lorg/telegram/ui/LanguageSelectActivity;->searching:Z
    invoke-static {v3}, Lorg/telegram/ui/LanguageSelectActivity;->access$000(Lorg/telegram/ui/LanguageSelectActivity;)Z

    move-result v3

    if-eqz v3, :cond_37

    iget-object v3, p0, Lorg/telegram/ui/LanguageSelectActivity$4;->this$0:Lorg/telegram/ui/LanguageSelectActivity;

    # getter for: Lorg/telegram/ui/LanguageSelectActivity;->searchWas:Z
    invoke-static {v3}, Lorg/telegram/ui/LanguageSelectActivity;->access$100(Lorg/telegram/ui/LanguageSelectActivity;)Z

    move-result v3

    if-eqz v3, :cond_37

    .line 149
    if-ltz p2, :cond_27

    iget-object v3, p0, Lorg/telegram/ui/LanguageSelectActivity$4;->this$0:Lorg/telegram/ui/LanguageSelectActivity;

    iget-object v3, v3, Lorg/telegram/ui/LanguageSelectActivity;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge p2, v3, :cond_27

    .line 150
    iget-object v3, p0, Lorg/telegram/ui/LanguageSelectActivity$4;->this$0:Lorg/telegram/ui/LanguageSelectActivity;

    iget-object v3, v3, Lorg/telegram/ui/LanguageSelectActivity;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "localeInfo":Lorg/telegram/messenger/LocaleController$LocaleInfo;
    check-cast v2, Lorg/telegram/messenger/LocaleController$LocaleInfo;

    .line 157
    .restart local v2    # "localeInfo":Lorg/telegram/messenger/LocaleController$LocaleInfo;
    :cond_27
    :goto_27
    if-eqz v2, :cond_35

    iget-object v3, v2, Lorg/telegram/messenger/LocaleController$LocaleInfo;->pathToFile:Ljava/lang/String;

    if-eqz v3, :cond_35

    iget-object v3, p0, Lorg/telegram/ui/LanguageSelectActivity$4;->this$0:Lorg/telegram/ui/LanguageSelectActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/LanguageSelectActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    if-nez v3, :cond_52

    .line 158
    :cond_35
    const/4 v3, 0x0

    .line 182
    :goto_36
    return v3

    .line 153
    :cond_37
    if-ltz p2, :cond_27

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/messenger/LocaleController;->sortedLanguages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge p2, v3, :cond_27

    .line 154
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/messenger/LocaleController;->sortedLanguages:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "localeInfo":Lorg/telegram/messenger/LocaleController$LocaleInfo;
    check-cast v2, Lorg/telegram/messenger/LocaleController$LocaleInfo;

    .restart local v2    # "localeInfo":Lorg/telegram/messenger/LocaleController$LocaleInfo;
    goto :goto_27

    .line 160
    :cond_52
    move-object v1, v2

    .line 161
    .local v1, "finalLocaleInfo":Lorg/telegram/messenger/LocaleController$LocaleInfo;
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v3, p0, Lorg/telegram/ui/LanguageSelectActivity$4;->this$0:Lorg/telegram/ui/LanguageSelectActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/LanguageSelectActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 162
    .local v0, "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    const-string v3, "DeleteLocalization"

    const v4, 0x7f0701d6

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 163
    const-string v3, "AppName"

    const v4, 0x7f070092

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 164
    const-string v3, "Delete"

    const v4, 0x7f0701c7

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/LanguageSelectActivity$4$1;

    invoke-direct {v4, p0, v1}, Lorg/telegram/ui/LanguageSelectActivity$4$1;-><init>(Lorg/telegram/ui/LanguageSelectActivity$4;Lorg/telegram/messenger/LocaleController$LocaleInfo;)V

    invoke-virtual {v0, v3, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 180
    const-string v3, "Cancel"

    const v4, 0x7f0700fe

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 181
    iget-object v3, p0, Lorg/telegram/ui/LanguageSelectActivity$4;->this$0:Lorg/telegram/ui/LanguageSelectActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/LanguageSelectActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 182
    const/4 v3, 0x1

    goto :goto_36
.end method
