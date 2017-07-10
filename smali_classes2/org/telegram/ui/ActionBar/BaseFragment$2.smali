.class Lorg/telegram/ui/ActionBar/BaseFragment$2;
.super Ljava/lang/Object;
.source "BaseFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ActionBar/BaseFragment;->telehShowDialog(Landroid/app/Dialog;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ActionBar/BaseFragment;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/ActionBar/BaseFragment;

    .prologue
    .line 358
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment$2;->this$0:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .registers 5
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;

    .prologue
    .line 361
    check-cast p1, Landroid/app/AlertDialog;

    .end local p1    # "dialogInterface":Landroid/content/DialogInterface;
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 362
    .local v0, "listView":Landroid/widget/ListView;
    if-eqz v0, :cond_14

    .line 363
    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    .line 365
    .local v1, "originalAdapter":Landroid/widget/ListAdapter;
    new-instance v2, Lorg/telegram/ui/ActionBar/BaseFragment$2$1;

    invoke-direct {v2, p0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment$2$1;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment$2;Landroid/widget/ListAdapter;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 433
    .end local v1    # "originalAdapter":Landroid/widget/ListAdapter;
    :cond_14
    return-void
.end method
