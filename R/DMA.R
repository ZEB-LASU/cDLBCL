# Copyright (C) 2021  Abdulazeez Giwa <abdulazeez.giwa@lasu.edu.ng>
#                     Oluwaseun Adu <oluwaseun.adu160581014@st.lasu.edu.ng>
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <https://www.gnu.org/licenses/>


library(limma)
data <- read.csv("GSE94913.csv", sep="\t", row.names=1)
head(data)
x <- factor(rep(c("dlbcl", "ctrl"), c(37, 7)))
fit <- lmFit(data, design=model.matrix(~x))
fit <- eBayes(fit)
tt <- topTable(fit, coef=2, number=Inf, sort.by="p", adjust="BH", p.value=0.01) 
write.csv(tt, "DEGs_list.csv")
