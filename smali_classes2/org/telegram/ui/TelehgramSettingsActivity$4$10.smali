.class Lorg/telegram/ui/TelehgramSettingsActivity$4$10;
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
    .line 1093
    iput-object p1, p0, Lorg/telegram/ui/TelehgramSettingsActivity$4$10;->this$1:Lorg/telegram/ui/TelehgramSettingsActivity$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 1096
    iget-object v0, p0, Lorg/telegram/ui/TelehgramSettingsActivity$4$10;->this$1:Lorg/telegram/ui/TelehgramSettingsActivity$4;

    iget-object v0, v0, Lorg/telegram/ui/TelehgramSettingsActivity$4;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/TelehgramSettingsActivity;->performAskAQuestion()V

    .line 1097
    return-void
.end method
