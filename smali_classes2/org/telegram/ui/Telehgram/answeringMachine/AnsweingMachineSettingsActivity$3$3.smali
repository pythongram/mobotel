.class Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity$3$3;
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

.field final synthetic val$input:Landroid/widget/EditText;

.field final synthetic val$preferences:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity$3;Landroid/content/SharedPreferences;Landroid/widget/EditText;)V
    .registers 4
    .param p1, "this$1"    # Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity$3;

    .prologue
    .line 175
    iput-object p1, p0, Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity$3$3;->this$1:Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity$3;

    iput-object p2, p0, Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity$3$3;->val$preferences:Landroid/content/SharedPreferences;

    iput-object p3, p0, Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity$3$3;->val$input:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 177
    iget-object v1, p0, Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity$3$3;->val$preferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 178
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "answeringmachineanswer"

    iget-object v2, p0, Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity$3$3;->val$input:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 179
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 180
    return-void
.end method
