.class Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity$3$4;
.super Ljava/lang/Object;
.source "AnsweingMachineSettingsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity$3;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity$3;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity$3;)V
    .registers 2
    .param p1, "this$1"    # Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity$3;

    .prologue
    .line 182
    iput-object p1, p0, Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity$3$4;->this$1:Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 184
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 185
    return-void
.end method
