.class Landroid/support/v13/app/FragmentCompatICSMR1;
.super Ljava/lang/Object;
.source "FragmentCompatICSMR1.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xf
.end annotation

.annotation build Landroid/support/annotation/RequiresApi;
    value = 0xf
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setUserVisibleHint(Landroid/app/Fragment;Z)V
    .registers 3
    .param p0, "f"    # Landroid/app/Fragment;
    .param p1, "isVisible"    # Z

    .prologue
    .line 27
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 28
    invoke-virtual {p0, p1}, Landroid/app/Fragment;->setUserVisibleHint(Z)V

    .line 30
    :cond_9
    return-void
.end method
