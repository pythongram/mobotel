.class Lorg/telegram/ui/ThemeActivity$ListAdapter$1;
.super Ljava/lang/Object;
.source "ThemeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ThemeActivity$ListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ThemeActivity$ListAdapter;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ThemeActivity$ListAdapter;)V
    .registers 2
    .param p1, "this$1"    # Lorg/telegram/ui/ThemeActivity$ListAdapter;

    .prologue
    .line 232
    iput-object p1, p0, Lorg/telegram/ui/ThemeActivity$ListAdapter$1;->this$1:Lorg/telegram/ui/ThemeActivity$ListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const v6, 0x7f0704fe

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 235
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Cells/ThemeCell;

    invoke-virtual {v3}, Lorg/telegram/ui/Cells/ThemeCell;->getCurrentThemeInfo()Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v2

    .line 236
    .local v2, "themeInfo":Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;
    iget-object v3, p0, Lorg/telegram/ui/ThemeActivity$ListAdapter$1;->this$1:Lorg/telegram/ui/ThemeActivity$ListAdapter;

    iget-object v3, v3, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemeActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    if-nez v3, :cond_1a

    .line 327
    :goto_19
    return-void

    .line 240
    :cond_1a
    new-instance v0, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    iget-object v3, p0, Lorg/telegram/ui/ThemeActivity$ListAdapter$1;->this$1:Lorg/telegram/ui/ThemeActivity$ListAdapter;

    iget-object v3, v3, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemeActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;-><init>(Landroid/content/Context;)V

    .line 242
    .local v0, "builder":Lorg/telegram/ui/ActionBar/BottomSheet$Builder;
    iget-object v3, v2, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->pathToFile:Ljava/lang/String;

    if-nez v3, :cond_49

    .line 243
    new-array v1, v5, [Ljava/lang/CharSequence;

    const-string v3, "ShareFile"

    .line 244
    invoke-static {v3, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v4

    .line 252
    .local v1, "items":[Ljava/lang/CharSequence;
    :goto_35
    new-instance v3, Lorg/telegram/ui/ThemeActivity$ListAdapter$1$1;

    invoke-direct {v3, p0, v2}, Lorg/telegram/ui/ThemeActivity$ListAdapter$1$1;-><init>(Lorg/telegram/ui/ThemeActivity$ListAdapter$1;Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;)V

    invoke-virtual {v0, v1, v3}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    .line 326
    iget-object v3, p0, Lorg/telegram/ui/ThemeActivity$ListAdapter$1;->this$1:Lorg/telegram/ui/ThemeActivity$ListAdapter;

    iget-object v3, v3, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->create()Lorg/telegram/ui/ActionBar/BottomSheet;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ThemeActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto :goto_19

    .line 247
    .end local v1    # "items":[Ljava/lang/CharSequence;
    :cond_49
    const/4 v3, 0x3

    new-array v1, v3, [Ljava/lang/CharSequence;

    const-string v3, "ShareFile"

    .line 248
    invoke-static {v3, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v4

    const-string v3, "Edit"

    const v4, 0x7f0701ea

    .line 249
    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v5

    const/4 v3, 0x2

    const-string v4, "Delete"

    const v5, 0x7f0701c7

    .line 250
    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    .restart local v1    # "items":[Ljava/lang/CharSequence;
    goto :goto_35
.end method
