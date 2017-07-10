.class Lorg/telegram/ui/ThemeActivity$ListAdapter$1$1$1;
.super Ljava/lang/Object;
.source "ThemeActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ThemeActivity$ListAdapter$1$1;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lorg/telegram/ui/ThemeActivity$ListAdapter$1$1;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ThemeActivity$ListAdapter$1$1;)V
    .registers 2
    .param p1, "this$3"    # Lorg/telegram/ui/ThemeActivity$ListAdapter$1$1;

    .prologue
    .line 309
    iput-object p1, p0, Lorg/telegram/ui/ThemeActivity$ListAdapter$1$1$1;->this$3:Lorg/telegram/ui/ThemeActivity$ListAdapter$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 312
    iget-object v0, p0, Lorg/telegram/ui/ThemeActivity$ListAdapter$1$1$1;->this$3:Lorg/telegram/ui/ThemeActivity$ListAdapter$1$1;

    iget-object v0, v0, Lorg/telegram/ui/ThemeActivity$ListAdapter$1$1;->val$themeInfo:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->deleteTheme(Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 313
    iget-object v0, p0, Lorg/telegram/ui/ThemeActivity$ListAdapter$1$1$1;->this$3:Lorg/telegram/ui/ThemeActivity$ListAdapter$1$1;

    iget-object v0, v0, Lorg/telegram/ui/ThemeActivity$ListAdapter$1$1;->this$2:Lorg/telegram/ui/ThemeActivity$ListAdapter$1;

    iget-object v0, v0, Lorg/telegram/ui/ThemeActivity$ListAdapter$1;->this$1:Lorg/telegram/ui/ThemeActivity$ListAdapter;

    iget-object v0, v0, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    # getter for: Lorg/telegram/ui/ThemeActivity;->parentLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;
    invoke-static {v0}, Lorg/telegram/ui/ThemeActivity;->access$600(Lorg/telegram/ui/ThemeActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->rebuildAllFragmentViews(Z)V

    .line 314
    iget-object v0, p0, Lorg/telegram/ui/ThemeActivity$ListAdapter$1$1$1;->this$3:Lorg/telegram/ui/ThemeActivity$ListAdapter$1$1;

    iget-object v0, v0, Lorg/telegram/ui/ThemeActivity$ListAdapter$1$1;->this$2:Lorg/telegram/ui/ThemeActivity$ListAdapter$1;

    iget-object v0, v0, Lorg/telegram/ui/ThemeActivity$ListAdapter$1;->this$1:Lorg/telegram/ui/ThemeActivity$ListAdapter;

    iget-object v0, v0, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    # getter for: Lorg/telegram/ui/ThemeActivity;->parentLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;
    invoke-static {v0}, Lorg/telegram/ui/ThemeActivity;->access$700(Lorg/telegram/ui/ThemeActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->showLastFragment()V

    .line 316
    :cond_29
    iget-object v0, p0, Lorg/telegram/ui/ThemeActivity$ListAdapter$1$1$1;->this$3:Lorg/telegram/ui/ThemeActivity$ListAdapter$1$1;

    iget-object v0, v0, Lorg/telegram/ui/ThemeActivity$ListAdapter$1$1;->this$2:Lorg/telegram/ui/ThemeActivity$ListAdapter$1;

    iget-object v0, v0, Lorg/telegram/ui/ThemeActivity$ListAdapter$1;->this$1:Lorg/telegram/ui/ThemeActivity$ListAdapter;

    iget-object v0, v0, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    # getter for: Lorg/telegram/ui/ThemeActivity;->listAdapter:Lorg/telegram/ui/ThemeActivity$ListAdapter;
    invoke-static {v0}, Lorg/telegram/ui/ThemeActivity;->access$000(Lorg/telegram/ui/ThemeActivity;)Lorg/telegram/ui/ThemeActivity$ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_46

    .line 317
    iget-object v0, p0, Lorg/telegram/ui/ThemeActivity$ListAdapter$1$1$1;->this$3:Lorg/telegram/ui/ThemeActivity$ListAdapter$1$1;

    iget-object v0, v0, Lorg/telegram/ui/ThemeActivity$ListAdapter$1$1;->this$2:Lorg/telegram/ui/ThemeActivity$ListAdapter$1;

    iget-object v0, v0, Lorg/telegram/ui/ThemeActivity$ListAdapter$1;->this$1:Lorg/telegram/ui/ThemeActivity$ListAdapter;

    iget-object v0, v0, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    # getter for: Lorg/telegram/ui/ThemeActivity;->listAdapter:Lorg/telegram/ui/ThemeActivity$ListAdapter;
    invoke-static {v0}, Lorg/telegram/ui/ThemeActivity;->access$000(Lorg/telegram/ui/ThemeActivity;)Lorg/telegram/ui/ThemeActivity$ListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ThemeActivity$ListAdapter;->notifyDataSetChanged()V

    .line 319
    :cond_46
    return-void
.end method
