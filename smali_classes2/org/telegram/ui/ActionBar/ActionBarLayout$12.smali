.class Lorg/telegram/ui/ActionBar/ActionBarLayout$12;
.super Ljava/lang/Object;
.source "ActionBarLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ActionBar/ActionBarLayout;->closeLastFragment(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

.field final synthetic val$currentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ActionBar/ActionBarLayout;Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .registers 3
    .param p1, "this$0"    # Lorg/telegram/ui/ActionBar/ActionBarLayout;

    .prologue
    .line 971
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$12;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iput-object p2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$12;->val$currentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    const/16 v2, 0x8

    .line 974
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$12;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$12;->val$currentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    # invokes: Lorg/telegram/ui/ActionBar/ActionBarLayout;->removeFragmentFromStackInternal(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->access$1600(Lorg/telegram/ui/ActionBar/ActionBarLayout;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 975
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$12;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->setVisibility(I)V

    .line 976
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$12;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    # getter for: Lorg/telegram/ui/ActionBar/ActionBarLayout;->backgroundView:Landroid/view/View;
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->access$1700(Lorg/telegram/ui/ActionBar/ActionBarLayout;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 977
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$12;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    # getter for: Lorg/telegram/ui/ActionBar/ActionBarLayout;->backgroundView:Landroid/view/View;
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->access$1700(Lorg/telegram/ui/ActionBar/ActionBarLayout;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 979
    :cond_1f
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$12;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    # getter for: Lorg/telegram/ui/ActionBar/ActionBarLayout;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->access$1800(Lorg/telegram/ui/ActionBar/ActionBarLayout;)Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    move-result-object v0

    if-eqz v0, :cond_32

    .line 980
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$12;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    # getter for: Lorg/telegram/ui/ActionBar/ActionBarLayout;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->access$1800(Lorg/telegram/ui/ActionBar/ActionBarLayout;)Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->setAllowOpenDrawer(ZZ)V

    .line 982
    :cond_32
    return-void
.end method
