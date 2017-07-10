.class Lorg/telegram/ui/TelehgramSettingsActivity$4$7;
.super Ljava/lang/Object;
.source "TelehgramSettingsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/TelehgramSettingsActivity$4;->onItemClick(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/TelehgramSettingsActivity$4;


# direct methods
.method constructor <init>(Lorg/telegram/ui/TelehgramSettingsActivity$4;)V
    .registers 2
    .param p1, "this$1"    # Lorg/telegram/ui/TelehgramSettingsActivity$4;

    .prologue
    .line 665
    iput-object p1, p0, Lorg/telegram/ui/TelehgramSettingsActivity$4$7;->this$1:Lorg/telegram/ui/TelehgramSettingsActivity$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 667
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 668
    return-void
.end method
