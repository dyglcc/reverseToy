.class public Lcom/reverse/stub/Utils$CodeBean$Method_;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/reverse/stub/Utils$CodeBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Method_"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/reverse/stub/Utils$CodeBean$Method_$Para;
    }
.end annotation


# instance fields
.field private methodName:Ljava/lang/String;

.field private paras:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/reverse/stub/Utils$CodeBean$Method_$Para;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMethodName()Ljava/lang/String;
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/reverse/stub/Utils$CodeBean$Method_;->methodName:Ljava/lang/String;

    return-object v0
.end method

.method public getParas()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/reverse/stub/Utils$CodeBean$Method_$Para;",
            ">;"
        }
    .end annotation

    .line 180
    iget-object v0, p0, Lcom/reverse/stub/Utils$CodeBean$Method_;->paras:Ljava/util/List;

    return-object v0
.end method

.method public setMethodName(Ljava/lang/String;)V
    .locals 0
    .param p1, "methodName"    # Ljava/lang/String;

    .line 176
    iput-object p1, p0, Lcom/reverse/stub/Utils$CodeBean$Method_;->methodName:Ljava/lang/String;

    .line 177
    return-void
.end method

.method public setParas(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/reverse/stub/Utils$CodeBean$Method_$Para;",
            ">;)V"
        }
    .end annotation

    .line 184
    .local p1, "paras":Ljava/util/List;, "Ljava/util/List<Lcom/reverse/stub/Utils$CodeBean$Method_$Para;>;"
    iput-object p1, p0, Lcom/reverse/stub/Utils$CodeBean$Method_;->paras:Ljava/util/List;

    .line 185
    return-void
.end method
