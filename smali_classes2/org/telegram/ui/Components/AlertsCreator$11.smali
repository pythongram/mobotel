.class final Lorg/telegram/ui/Components/AlertsCreator$11;
.super Ljava/lang/Object;
.source "AlertsCreator.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/AlertsCreator;->createSingleChoiceDialog(Landroid/app/Activity;Lorg/telegram/ui/ActionBar/BaseFragment;[Ljava/lang/String;Ljava/lang/String;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Landroid/content/DialogInterface$OnClickListener;

.field final synthetic val$parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/DialogInterface$OnClickListener;)V
    .registers 3

    .prologue
    .line 774
    iput-object p1, p0, Lorg/telegram/ui/Components/AlertsCreator$11;->val$parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    iput-object p2, p0, Lorg/telegram/ui/Components/AlertsCreator$11;->val$listener:Landroid/content/DialogInterface$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 777
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 779
    .local v0, "sel":I
    iget-object v1, p0, Lorg/telegram/ui/Components/AlertsCreator$11;->val$parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz v1, :cond_13

    .line 780
    iget-object v1, p0, Lorg/telegram/ui/Components/AlertsCreator$11;->val$parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->dismissCurrentDialig()V

    .line 782
    :cond_13
    iget-object v1, p0, Lorg/telegram/ui/Components/AlertsCreator$11;->val$listener:Landroid/content/DialogInterface$OnClickListener;

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 783
    return-void
.end method
