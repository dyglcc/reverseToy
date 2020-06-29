.class public Lcom/reverse/stub/Utils$CodeBean;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/reverse/stub/Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CodeBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/reverse/stub/Utils$CodeBean$Method_;,
        Lcom/reverse/stub/Utils$CodeBean$StaticField;
    }
.end annotation


# instance fields
.field private className:Ljava/lang/String;

.field private instanceMethods:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/reverse/stub/Utils$CodeBean$Method_;",
            ">;"
        }
    .end annotation
.end field

.field private methods:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/reverse/stub/Utils$CodeBean$Method_;",
            ">;"
        }
    .end annotation
.end field

.field private staticFields:Lcom/reverse/stub/Utils$CodeBean$StaticField;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getClassName()Ljava/lang/String;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/reverse/stub/Utils$CodeBean;->className:Ljava/lang/String;

    return-object v0
.end method

.method public getInstanceMethods()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/reverse/stub/Utils$CodeBean$Method_;",
            ">;"
        }
    .end annotation

    .line 134
    iget-object v0, p0, Lcom/reverse/stub/Utils$CodeBean;->instanceMethods:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getMethods()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/reverse/stub/Utils$CodeBean$Method_;",
            ">;"
        }
    .end annotation

    .line 126
    iget-object v0, p0, Lcom/reverse/stub/Utils$CodeBean;->methods:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getStaticFields()Lcom/reverse/stub/Utils$CodeBean$StaticField;
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/reverse/stub/Utils$CodeBean;->staticFields:Lcom/reverse/stub/Utils$CodeBean$StaticField;

    return-object v0
.end method

.method public setClassName(Ljava/lang/String;)V
    .locals 0
    .param p1, "className"    # Ljava/lang/String;

    .line 122
    iput-object p1, p0, Lcom/reverse/stub/Utils$CodeBean;->className:Ljava/lang/String;

    .line 123
    return-void
.end method

.method public setInstanceMethods(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/reverse/stub/Utils$CodeBean$Method_;",
            ">;)V"
        }
    .end annotation

    .line 138
    .local p1, "instanceMethods":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/reverse/stub/Utils$CodeBean$Method_;>;"
    iput-object p1, p0, Lcom/reverse/stub/Utils$CodeBean;->instanceMethods:Ljava/util/ArrayList;

    .line 139
    return-void
.end method

.method public setMethods(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/reverse/stub/Utils$CodeBean$Method_;",
            ">;)V"
        }
    .end annotation

    .line 130
    .local p1, "methods":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/reverse/stub/Utils$CodeBean$Method_;>;"
    iput-object p1, p0, Lcom/reverse/stub/Utils$CodeBean;->methods:Ljava/util/ArrayList;

    .line 131
    return-void
.end method

.method public setStaticFields(Lcom/reverse/stub/Utils$CodeBean$StaticField;)V
    .locals 0
    .param p1, "staticFields"    # Lcom/reverse/stub/Utils$CodeBean$StaticField;

    .line 148
    iput-object p1, p0, Lcom/reverse/stub/Utils$CodeBean;->staticFields:Lcom/reverse/stub/Utils$CodeBean$StaticField;

    .line 149
    return-void
.end method
